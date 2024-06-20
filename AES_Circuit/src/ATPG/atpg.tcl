##########################################
#  SA Internal scan pattern gen
##########################################


  if {![file exist ./REPORTS]} {
  sh mkdir -p ./REPORTS
  }

  if {![file exist ./IMAGE]} {
  sh mkdir -p ./IMAGE
  }

  if {![file exist ./PATTERNS]} {
  sh mkdir -p ./PATTERNS
  }


 if {![file exist ./PATTERNS/STIL]} {
  sh mkdir -p ./PATTERNS/STIL
  }


 if {![file exist ./PATTERNS/MAXTB]} {
  sh mkdir -p ./PATTERNS/MAXTB
  }
if {![file exist ./PATTERNS/BIN]} {
  sh mkdir -p ./PATTERNS/BIN
  }


 if {![file exist ./DIAGNOSTIC_DATA]} {
  sh mkdir -p ./DIAGNOSTIC_DATA
  }
#FAULTS /  PATTERNS/MAXTB/

 if {![file exist ./FAULTS]} {
  sh mkdir -p ./FAULTS
  }



#set setenv BLOCK_NAME counter_1  
#set DESIGN	$env(BLOCK_NAME)
set DESIGN	aes 
#$env(BLOCK_NAME)
set FAULT	SA
set BASE_MODE	Internal_scan
set ATPG_MODE	Internal_scan

set  NET_DIR   ../syn/OUTPUT_DATA/
#set  SPF_DIR  $env(SCAN)/SCAN_$env(DIR_SCAN_TAG)/OUTPUT_$env(DIR_SCAN_TAG)/spf_modified

set  SPF_DIR  ../syn/SPF/

set PASS ${DESIGN}_${FAULT}_${ATPG_MODE}
echo $PASS
report_version -full

#Unused gates udp warning
set_rules N14 warning -verbose
# B12 - Undriven instance input pin--> on BE netlist
set_rules B12 warning -verbose

#DRC warning contention check
set_rules Z3 warning -verbose


#set_netlist -redefined first

# Added from G2020

build -force
remove_net_connections -all
# **************************************
# Remove all netlist and library modules
# **************************************

read_netlist -delete


###############
# Standard cells
################
#source -e $env(ATPG)/SCRIPTS/COMMON/read_lib.tcl
######### MEMORY LIB READ from Local Directory ########
#source -e SCRIPTS/read_memory_lib.tcl
#########
# Netlist
#########
set_netlist -redefined_module first

#if {$env(PostCTS) == "1"} {
#read_netlist /prj/eyeq6hdft_acc_cut2/shiv/SYNC/EyeQ6H_implementation_cut2/BLOCKS_RTL100/SSI_top/logic/post_cts/NETLIST/SSI_top.v
#} else {

#read_netlist ${NET_DIR}/${DESIGN}_netlist_sca/home/vlsilab/sagar_harsh_soham/4bitCounter/.v
#}
#read_netlist /home/vlsilab/sagar_harsh_soham/4bitCounter/4bitcounter.v 
read_netlist /home/vlsilab/Downloads/SAED90nm_EDK_10072017/SAED90nm_EDK_10072017/SAED90_EDK/SAED_EDK90nm/Digital_Standard_cell_Library/verilog/saed90nm.v

read_netlist /home/vlsilab/sagar_harsh_soham/aes-master/src/SYN/OUTPUT_DATA/aes_netlist_scan.v

#read_netlist /home/vlsilab/sagar_harsh_soham/4bitCounter/SYN/OUTPUT_DATA/counter_netlist_scan.v

#home/vlsilab/sagar_harsh_soham/4bitCounter/4bitcounter.v 

#####################
# Building the Design
#####################
set_learning -max_feedback_sources 500

set_build -nodelete_unused_gates
run_build ${DESIGN} -remove_pio_pull
write_image -replace IMAGE/${DESIGN}_post_build.bin.gz -schematic_view -netlist_data -design -violation -compress gzip -replace

report_feedback_paths -all > REPORTS/${DESIGN}_feedback_path.rpt
drc -force

# **************************************
# Simulation setting
# **************************************
set_simulation -bidi_fill

set_simulation -xclock_gives_xout 
# This propagets X on FF when the clock gets an X status.
# Actually this behaviour is described in UDP section of
# .v library. 
# If simulation mismatches occour that require this setting to
# be enabled, please contact into FrontEndKit development team

set_simulation -xfill_out_of_range_write 
# This is OK. If the pattern addresses a memory out of range
# the data input will be 'X'


# **************************************
# DRC setting
# **************************************
#set_rules X2 warning
set_simulation -analyze_x_source -verbose
set_simulation -nopipeline_cells
set_drc -allow_unstable_set_resets
set_drc -nodslave_remodel -noreclassify_invalid_dslaves  -noshadows
set_drc -z_check_with_all_constraints




set_drc -report_x_sink
#
#
# **************************************
# Disable active low asynchronous reset (capture phase)
# **************************************
#**************************************
# Slow bidirectional pads management
#**************************************
#add_slow_bidis -all
#add_pi_constraints 0 reset_n

#**************************************
# Mask all output port
#**************************************
#add_po_masks -all

# *************************************
#  Read protocol file
# **************************************
#add_clock 0 scan_clk -refclock
#echo "run_drc ${SPF_DIR}/${PASS}.spf -patternexec ${BASE_MODE}"
#run_drc ${SPF_DIR}/${PASS}.spf
#run_drc ${SPF_DIR}/counter_1netlist_Internal_scan.spf
#run_drc /home/vlsilab/sagar_harsh_soham/4bitCounter/SYN/SPF/counternetlist_Internal_scan.spf
run_drc /home/vlsilab/sagar_harsh_soham/aes-master/src/SYN/SPF/aesnetlist_Internal_scan.spf

 
# **************************************
# DRC
# **************************************
#run_drc

# writing image after DRC
write_image -netlist_data -design_view -schematic_view -violation IMAGE/${PASS}_post_drc.image.gz -compress gzip -replace

# Added for link to Diagnosis
report_scan_chain -verbose > REPORTS/${PASS}.scan_chains.rpt
report_scan_cell -all -clocks > REPORTS/${PASS}.scan_cells.rpt
report_nonscan_cell -all  > REPORTS/${PASS}.non_scan_cells.rpt
report_compressor -all -verbose > REPORTS/${PASS}.compressor.rpt
report_clocks -gating -verbose > REPORTS/${PASS}.clock_gating.rpt
report_rules -fails -all  > REPORTS/${PASS}.drc.rpt
report_lockup_latches  -external_clocking -pipeline >  REPORTS/${PASS}.scan_lockup_latch.rpt
report_violation -all > REPORTS/${PASS}.detailed_drc_violation.rpt

#if {$env(DRC_ONLY) == "1"} {
#exit
#}


#if {$env(run_atpg_for_non_signoff) == "1"} {

#**************************************
# TMAX2PT
#**************************************
#source -e $env(ATPG)/SCRIPTS/COMMON/tmax2pt.tcl
#write_timing_constraints TMAX2PT/pt_shift.tcl -debug -replace -mode shift -wft default
#write_timing_constraints TMAX2PT/pt_capture.tcl -debug  -replace -mode capture -wft _multiclock_capture_WFT_



#**************************************
# Set fault model
#**************************************
set_faults -noequiv_code -model stuck -pt_credit 0 -summary verbose \
	 -atpg_effectiveness -fault_coverage


#**************************************
# Add fault
#**************************************
add_faults -all

update_faults -reset_au
report_summaries 

#**************************************
# ATPG setting
#**************************************
#///////// common settings ///////////*
set_atpg -verbose
set_atpg -num_processes 4
set_atpg -abort_limit 1000

set_atpg -capture_cycle 4
set_atpg -lete_fastseq
##set_patterns -histogram_summary -load_summary
set_atpg -parallel_strobe_data_file ${PASS}.psd -replace

# for only generating 500 patterns.
set_atpg -pattern 500
run_atpg -auto_compression
run_sim > sc_int
## **************************************
## Write faults
## **************************************
write_faults FAULTS/${PASS}.faults.gz -replace -all -compress gzip 
 
write_faults FAULTS/${PASS}.AU_PT_ND.faults.gz -class {AU ND PT} -replace
report_faults -class {AU ND PT} -level 6 32  -verbose >  FAULTS/${PASS}.AU_PT_ND.fault_profile.rpt

## **************************************
## Write Patterns
## **************************************

write_patterns PATTERNS/BIN/${PASS}.bin.gz -compress gzip -format binary -internal -replace
write_patterns PATTERNS/STIL/${PASS}_500.stil.gz -compress gzip -format stil  -replace -internal  -first 0 -last 499
#write_patterns PATTERNS/STIL/${PASS}_5.stil.gz -compress gzip -format stil  -replace -internal  -first 1 -last 4 
#write_patterns PATTERNS/STIL/${PASS}_chain.stil.gz -compress gzip -format stil  -replace -internal -first 0 -last 0

write_testbench -input PATTERNS/STIL/${PASS}_500.stil.gz -output PATTERNS/MAXTB/${PASS}_parallel_max_tb -config_file MAX_TB_cfg.txt -parameters { -generic -log LOGS/maxtb_pass1_500_stil2ver.log } -replace
#write_testbench -input PATTERNS/STIL/${PASS}_5.stil.gz -output PATTERNS/MAXTB/${PASS}_serial_max_tb -config_file MAX_TB_cfg.txt -parameters { -generic -log LOGS/maxtb_pass1_5_stil2ver.log } -replace
#write_testbench -input PATTERNS/STIL/${PASS}_chain.stil.gz -output PATTERNS/MAXTB/${PASS}_chain_max_tb -config_file MAX_TB_cfg.txt -parameters { -generic -log LOGS/chain_maxtb_pass1_chain_stil2ver.log } -replace




report_faults -level 3 100 
report_faults -level 9 100 > REPORTS/${PASS}_level9_coverage.rpt

#######################################
# Report For Diagnosis
########################################
report_summaries > DIAGNOSTIC_DATA/${PASS}.summaries.rpt
report_clock -matrix > DIAGNOSTIC_DATA/${PASS}.clock_matrix.rpt
report_fault -all -level 10 100 -verbose > DIAGNOSTIC_DATA/${PASS}.hier_fault_summary.rpt
report_summaries faults patterns cpu primitives sequential_depths > DIAGNOSTIC_DATA/${PASS}.pattern_summary.rpt
report_patterns -type -all > REPORTS/${PASS}.pattern_type.rpt
# **************************************
# Write files for failure analysis
# **************************************
write_netlist  -format verilog -replace DIAGNOSTIC_DATA/${DESIGN}.v -stop design_level
#}

#exit
