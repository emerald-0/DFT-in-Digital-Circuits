#!/bin/csh -f

# ----------------------------------------------------------------------
# This "comp.sh" is used to compile the child partition independently.
# 
# Flags could be useful for debug, diagnostic and profile:
# 
#   -gdb       : run vcs1 under gdb by picking up gdb from enviroment 
#   -gdb1      : run vcs1 under gdb by picking up gdb shipped with VCS 
#   -Xrepct2   : compile time and memory report.  
#   -collect   : run collect profile 
#   -gen_c     : generate C code instead of object code 
#   -gen_c -Xmod=2 -Xcom=2 -Xail=0x20000 
#              : generate C code with original names and comment. 
#   -Xvcsdb=0x40000 
#              : keep all contents in csrc without deleting them. 
#  
# Copyright (c) 1991-2018 by Synopsys Inc. 
# ----------------------------------------------------------------------


# disable env if set by user
unsetenv VCS_ENABLE_SCALENE
unsetenv ZEBU_ENABLE_SCALENE
cd /home/vlsilab/sagar_harsh_soham/aes-master/src/symbolic_links

setenv SYNOPSYS_SIM_SETUP simv.daidir/synopsys_sim.setup
setenv VCS_LCAMSG_PRINT_OFF 1

${VCS_HOME}/bin/vcs $* \
    #begin of .partcomp_options\
    -uum -diag timescale -ntb_opts uvm -fastpartcomp=j4 -kdb +vcs+lic+wait -lca -sverilog -error=noMPD -debug_access+f -timescale=1ns/1fs +plusarg_save -j2 -debug_access+all -debug_access+dmptf -debug_region=cell+lib +nocelldefinepli+0 +tmax_parallel=7 +define_tmax_usf_debug_strobe_mode=1 +tetramax  \
    -reportstats  \
    #end of .partcomp_options\
    -mx_invoke_vcs_from_tool \
    -mxunielab \
    -partcomp_master_daidir=simv.daidir \
    -q \
    -assert \
    enable_hier \
    -full64 \
    -file \
    simv.daidir/.partcomp_added_options \
    -q \
    -partcomp=so \
    -partcomp_so_dir=partitionlib/_vcs_pc_package__5DYEp \
    VCS_PARTCOMP_LIB.pc__vcs_pc_package__config \
    -o partitionlib/_vcs_pc_package__5DYEp/libvcspc__vcs_pc_package__5DYEp.so \
    -Mdir=partitionlib/_vcs_pc_package__5DYEp/csrc \
    -Xarijit=0x2 \
    -sverilog \
    -l partitionlib/_vcs_pc_package__5DYEp/_vcs_pc_package__5DYEp.log \

set vcs_status = $status

cd -

if ($vcs_status != 0) then
    echo "VCS command finished with error: $vcs_status"
endif

exit $vcs_status


# end of comp.sh
