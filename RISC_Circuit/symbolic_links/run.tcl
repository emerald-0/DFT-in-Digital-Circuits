
vcs -kdb -reportstats +vcs+lic+wait -full64 -top counter_test -lca -Mdir=output -ntb_opts uvm -sverilog +libext+.v+.sv -error=noMPD -debug_access+f -timescale=1ns/1fs +plusarg_save -partcomp -fastpartcomp=j4 -j2  +define+SVT_JTAG_MAX_INSTRUCTION_WIDTH=70 +define+SVT_JTAG_MAX_DATA_WIDTH=16 +define+GATE_SIM -debug_access+all -debug_access+dmptf -debug_region=cell+lib +nocelldefinepli+0 -diag timescale +tmax_parallel=7 +define_tmax_usf_debug_strobe_mode=1 +define+VIRAGE_FAST_VERILOG +define+_fv+VIRL_functiononly +tetramax +define+tmax_msg=4 -f 4bitcounter.f

./simv -ucli -i top.ucli

verdi -fsdb wavefrom.fsdb
