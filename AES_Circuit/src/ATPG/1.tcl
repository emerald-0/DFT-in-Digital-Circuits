
                             Synopsys TestMAX (TM) 
                                  TetraMAX (R)

               Version U-2022.12-SP7 for linux64 - Oct 10, 2023  

                    Copyright (c) 1996 - 2023 Synopsys, Inc.
   This software and the associated documentation are proprietary to Synopsys,
 Inc. This software may only be used in accordance with the terms and conditions
 of a written license agreement with Synopsys, Inc. All other use, reproduction,
   or distribution of this software is strictly prohibited.  Licensed Products
     communicate with Synopsys servers for the purpose of providing software
    updates, detecting software piracy and verifying that customers are using
    Licensed Products in conformity with the applicable License Key for such
  Licensed Products. Synopsys will use information gathered in connection with
    this process to deliver software updates and pursue software pirates and
                                   infringers.

 Inclusivity & Diversity - Visit SolvNetPlus to read the "Synopsys Statement on
            Inclusivity and Diversity" (Refer to article 000036315 at
                        https://solvnetplus.synopsys.com)


 Tcl mode is on by default. Use -notcl to run in native mode.
 Executing startup file "/home/vlsilab/Documents/InstalledTools/TetraMax/txs/U-2022.12-SP7/admin/setup/tmaxtcl.rc".
BUILD-T> source atpg/[K.tcl
aes_SA_Internal_scan
 U-2022.12-SP7_191200
 Warning: All netlist and library module data are now deleted. (M41)
 Begin reading netlist ( /home/vlsilab/Downloads/SAED90nm_EDK_10072017/SAED90nm_EDK_10072017/SAED90_EDK/SAED_EDK90nm/Digital_Standard_cell_Library/verilog/saed90nm.v )...
 End parsing Verilog file /home/vlsilab/Downloads/SAED90nm_EDK_10072017/SAED90nm_EDK_10072017/SAED90_EDK/SAED_EDK90nm/Digital_Standard_cell_Library/verilog/saed90nm.v with 0 errors.
 End reading netlist: #modules=366, top=saed90_xbuf, #lines=34080, CPU_time=0.07 sec, Memory=2MB
 Begin reading netlist ( /home/vlsilab/sagar_harsh_soham/aes-master/src/SYN/OUTPUT_DATA/aes_netlist_scan.v )...
 End parsing Verilog file /home/vlsilab/sagar_harsh_soham/aes-master/src/SYN/OUTPUT_DATA/aes_netlist_scan.v with 0 errors.
 End reading netlist: #modules=7, top=aes, #lines=25386, CPU_time=0.08 sec, Memory=8MB
 ------------------------------------------------------------------------------
 Begin build model for topcut = aes ...
 ------------------------------------------------------------------------------
 There were 33495 primitives and 0 faultable pins removed during model optimizations
 Warning: Rule B7 (undriven module output pin) was violated 4 times.
 Warning: Rule B8 (unconnected module input pin) was violated 7 times.
 Warning: Rule B9 (undriven module internal net) was violated 1 times.
 Warning: Rule B10 (unconnected module internal net) was violated 29 times.
 End build model: #primitives=86380, CPU_time=0.13 sec, Memory=28MB
 ------------------------------------------------------------------------------
 Begin learning analyses...
 End learning analyses, total learning CPU time=0.09 sec.
 ------------------------------------------------------------------------------
 End write image: #bytes=2663920, CPU time=0.42 sec.
 Warning: Image created with design viewing enabled. (M367)
 ------------------------------------------------------------------------------
 Begin scan design rules checking...
 ------------------------------------------------------------------------------
 Begin reading test protocol file /home/vlsilab/sagar_harsh_soham/aes-master/src/SYN/SPF/aesnetlist_Internal_scan.spf...
 Error: Line 11 (/home/vlsilab/sagar_harsh_soham/aes-master/src/SYN/SPF/aesnetlist_Internal_scan.spf), unresolved reference (Signal "TEST_EN" is not a netlist pin). (V5-1)
 Error: Line 26 (/home/vlsilab/sagar_harsh_soham/aes-master/src/SYN/SPF/aesnetlist_Internal_scan.spf), unresolved reference (Signal "pll_bypass_1" is not a netlist pin). (V5-2)
 Error: Line 98 (/home/vlsilab/sagar_harsh_soham/aes-master/src/SYN/SPF/aesnetlist_Internal_scan.spf), unresolved reference (Signal "pll_reset" is not a netlist pin). (V5-3)
 Error: Line 99 (/home/vlsilab/sagar_harsh_soham/aes-master/src/SYN/SPF/aesnetlist_Internal_scan.spf), unresolved reference (Signal "test_se" is not a netlist pin). (V5-4)
 Error: Line 109 (/home/vlsilab/sagar_harsh_soham/aes-master/src/SYN/SPF/aesnetlist_Internal_scan.spf), unresolved reference (No such signal or signalgroup "TEST_EN"). (V5-5)
 Error: Line 112 (/home/vlsilab/sagar_harsh_soham/aes-master/src/SYN/SPF/aesnetlist_Internal_scan.spf), unresolved reference (No such signal or signalgroup "pll_bypass_1"). (V5-6)
 Error: Line 121 (/home/vlsilab/sagar_harsh_soham/aes-master/src/SYN/SPF/aesnetlist_Internal_scan.spf), unresolved reference (No such signal or signalgroup "pll_reset"). (V5-7)
 Error: Line 121 (/home/vlsilab/sagar_harsh_soham/aes-master/src/SYN/SPF/aesnetlist_Internal_scan.spf), unresolved reference (No such signal or signalgroup "test_se"). (V5-8)
 Error: Line 132 (/home/vlsilab/sagar_harsh_soham/aes-master/src/SYN/SPF/aesnetlist_Internal_scan.spf), unresolved reference (No such signal or signalgroup "TEST_EN"). (V5-9)
 Error: Line 135 (/home/vlsilab/sagar_harsh_soham/aes-master/src/SYN/SPF/aesnetlist_Internal_scan.spf), unresolved reference (No such signal or signalgroup "pll_bypass_1" -- Too many errors; parsing terminated). (V5-10)
 End parsing STIL file /home/vlsilab/sagar_harsh_soham/aes-master/src/SYN/SPF/aesnetlist_Internal_scan.spf with 10 errors.
 Error: Design rules checking failed: cannot exit DRC command mode. (M100)
 Information: script 'atpg.tcl'
	stopped at line 175 due to error. (CMD-081)

Extended error info:

    while executing
"run_drc /home/vlsilab/sagar_harsh_soham/aes-master/src/SYN/SPF/aesnetlist_Internal_scan.spf"
    (file "atpg.tcl" line 175)
 -- End Extended Error Info
DRC-T> DRC-T> 