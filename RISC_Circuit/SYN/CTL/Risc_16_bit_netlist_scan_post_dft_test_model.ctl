STIL 1.0 {
    CTL P2001.10;
    Design 2005;
}
Header {
    Title "Minimal STIL for design `Risc_16_bit'";
    Date "Mon May 20 15:23:33 2024";
    Source "DFT Compiler S-2021.06-SP5-3";
}
Signals {
    "SCAN_MODE" In;
    "TEST_SE" In;
    "TEST_SI1" In;
    "TEST_SI2" In;
    "TEST_SI3" In;
    "TEST_SI4" In;
    "clk" In;
    "pll_bypass_2" In;
    "scan_clk" In;
    "TEST_SO1" Out;
    "TEST_SO2" Out;
    "TEST_SO3" Out;
    "TEST_SO4" Out;
    "pll_bypass" In;
    "pll_reset" In;
    "DU/dm/memory_reg[0][0]/SI" Pseudo;
    "DU/dm/memory_reg[5][10]/Q" Pseudo;
    "DU/dm/memory_reg[5][11]/SI" Pseudo;
    "DU/reg_file/reg_array_reg[2][5]/Q" Pseudo;
    "DU/reg_file/reg_array_reg[2][6]/SI" Pseudo;
    "DU/reg_file/reg_array_reg[7][15]/Q" Pseudo;
    "occ_snps_pll_controller/fast_clk" Pseudo;
    "occ_snps_pll_controller/U2/U2/Q" Pseudo;
    "snps_clk_chain_0/clk_ctrl_data[0]" Pseudo;
    "snps_clk_chain_0/clk_ctrl_data[1]" Pseudo;
    "snps_clk_chain_0/clk_ctrl_data[2]" Pseudo;
    "snps_clk_chain_0/clk_ctrl_data[3]" Pseudo;
}
SignalGroups  {
    "all_inputs" = '"SCAN_MODE" + "TEST_SE" + "TEST_SI1" + "TEST_SI2" + 
    "TEST_SI3" + "TEST_SI4" + "clk" + "pll_bypass_2" + "scan_clk" + "pll_bypass" 
    + "pll_reset"';
    "all_outputs" = '"TEST_SO1" + "TEST_SO2" + "TEST_SO3" + "TEST_SO4"';
    "all_ports" = '"all_inputs" + "all_outputs"';
    "_pi" = '"SCAN_MODE" + "TEST_SE" + "TEST_SI1" + "TEST_SI2" + "TEST_SI3" + 
    "TEST_SI4" + "clk" + "pll_bypass_2" + "scan_clk" + "pll_bypass" + 
    "pll_reset"';
    "_po" = '"TEST_SO1" + "TEST_SO2" + "TEST_SO3" + "TEST_SO4"';
}
SignalGroups all_dft_protocol {
    "_clk" = '"clk" + "scan_clk"';
}
SignalGroups Internal_scan {
    "_si" = '"TEST_SI1" + "TEST_SI2" + "TEST_SI3" + "TEST_SI4"' {
        ScanIn;
    }
    "_so" = '"TEST_SO1" + "TEST_SO2" + "TEST_SO3" + "TEST_SO4"' {
        ScanOut;
    }
    "_clk" = '"clk" + "scan_clk"';
}
ScanStructures Internal_scan {
    ScanChain "1" {
        ScanLength 91;
        ScanCells "DU/dm/memory_reg[0][0]" "DU/dm/memory_reg[0][1]" 
        "DU/dm/memory_reg[0][2]" "DU/dm/memory_reg[0][3]" 
        "DU/dm/memory_reg[0][4]" "DU/dm/memory_reg[0][5]" 
        "DU/dm/memory_reg[0][6]" "DU/dm/memory_reg[0][7]" 
        "DU/dm/memory_reg[0][8]" "DU/dm/memory_reg[0][9]" 
        "DU/dm/memory_reg[0][10]" "DU/dm/memory_reg[0][11]" 
        "DU/dm/memory_reg[0][12]" "DU/dm/memory_reg[0][13]" 
        "DU/dm/memory_reg[0][14]" "DU/dm/memory_reg[0][15]" 
        "DU/dm/memory_reg[1][0]" "DU/dm/memory_reg[1][1]" 
        "DU/dm/memory_reg[1][2]" "DU/dm/memory_reg[1][3]" 
        "DU/dm/memory_reg[1][4]" "DU/dm/memory_reg[1][5]" 
        "DU/dm/memory_reg[1][6]" "DU/dm/memory_reg[1][7]" 
        "DU/dm/memory_reg[1][8]" "DU/dm/memory_reg[1][9]" 
        "DU/dm/memory_reg[1][10]" "DU/dm/memory_reg[1][11]" 
        "DU/dm/memory_reg[1][12]" "DU/dm/memory_reg[1][13]" 
        "DU/dm/memory_reg[1][14]" "DU/dm/memory_reg[1][15]" 
        "DU/dm/memory_reg[2][0]" "DU/dm/memory_reg[2][1]" 
        "DU/dm/memory_reg[2][2]" "DU/dm/memory_reg[2][3]" 
        "DU/dm/memory_reg[2][4]" "DU/dm/memory_reg[2][5]" 
        "DU/dm/memory_reg[2][6]" "DU/dm/memory_reg[2][7]" 
        "DU/dm/memory_reg[2][8]" "DU/dm/memory_reg[2][9]" 
        "DU/dm/memory_reg[2][10]" "DU/dm/memory_reg[2][11]" 
        "DU/dm/memory_reg[2][12]" "DU/dm/memory_reg[2][13]" 
        "DU/dm/memory_reg[2][14]" "DU/dm/memory_reg[2][15]" 
        "DU/dm/memory_reg[3][0]" "DU/dm/memory_reg[3][1]" 
        "DU/dm/memory_reg[3][2]" "DU/dm/memory_reg[3][3]" 
        "DU/dm/memory_reg[3][4]" "DU/dm/memory_reg[3][5]" 
        "DU/dm/memory_reg[3][6]" "DU/dm/memory_reg[3][7]" 
        "DU/dm/memory_reg[3][8]" "DU/dm/memory_reg[3][9]" 
        "DU/dm/memory_reg[3][10]" "DU/dm/memory_reg[3][11]" 
        "DU/dm/memory_reg[3][12]" "DU/dm/memory_reg[3][13]" 
        "DU/dm/memory_reg[3][14]" "DU/dm/memory_reg[3][15]" 
        "DU/dm/memory_reg[4][0]" "DU/dm/memory_reg[4][1]" 
        "DU/dm/memory_reg[4][2]" "DU/dm/memory_reg[4][3]" 
        "DU/dm/memory_reg[4][4]" "DU/dm/memory_reg[4][5]" 
        "DU/dm/memory_reg[4][6]" "DU/dm/memory_reg[4][7]" 
        "DU/dm/memory_reg[4][8]" "DU/dm/memory_reg[4][9]" 
        "DU/dm/memory_reg[4][10]" "DU/dm/memory_reg[4][11]" 
        "DU/dm/memory_reg[4][12]" "DU/dm/memory_reg[4][13]" 
        "DU/dm/memory_reg[4][14]" "DU/dm/memory_reg[4][15]" 
        "DU/dm/memory_reg[5][0]" "DU/dm/memory_reg[5][1]" 
        "DU/dm/memory_reg[5][2]" "DU/dm/memory_reg[5][3]" 
        "DU/dm/memory_reg[5][4]" "DU/dm/memory_reg[5][5]" 
        "DU/dm/memory_reg[5][6]" "DU/dm/memory_reg[5][7]" 
        "DU/dm/memory_reg[5][8]" "DU/dm/memory_reg[5][9]" 
        "DU/dm/memory_reg[5][10]";
        ScanIn "TEST_SI1";
        ScanOut "TEST_SO1";
        ScanEnable "TEST_SE";
        ScanMasterClock "scan_clk";
    }
    ScanChain "2" {
        ScanLength 4;
        ScanCells "snps_clk_chain_0/U_shftreg_0/ff_3/q_reg" 
        "snps_clk_chain_0/U_shftreg_0/ff_2/q_reg" 
        "snps_clk_chain_0/U_shftreg_0/ff_1/q_reg" 
        "snps_clk_chain_0/U_shftreg_0/ff_0/q_reg";
        ScanIn "TEST_SI2";
        ScanOut "TEST_SO2";
        ScanEnable "TEST_SE";
        ScanMasterClock "scan_clk";
    }
    ScanChain "3" {
        ScanLength 91;
        ScanCells "DU/dm/memory_reg[5][11]" "DU/dm/memory_reg[5][12]" 
        "DU/dm/memory_reg[5][13]" "DU/dm/memory_reg[5][14]" 
        "DU/dm/memory_reg[5][15]" "DU/dm/memory_reg[6][0]" 
        "DU/dm/memory_reg[6][1]" "DU/dm/memory_reg[6][2]" 
        "DU/dm/memory_reg[6][3]" "DU/dm/memory_reg[6][4]" 
        "DU/dm/memory_reg[6][5]" "DU/dm/memory_reg[6][6]" 
        "DU/dm/memory_reg[6][7]" "DU/dm/memory_reg[6][8]" 
        "DU/dm/memory_reg[6][9]" "DU/dm/memory_reg[6][10]" 
        "DU/dm/memory_reg[6][11]" "DU/dm/memory_reg[6][12]" 
        "DU/dm/memory_reg[6][13]" "DU/dm/memory_reg[6][14]" 
        "DU/dm/memory_reg[6][15]" "DU/dm/memory_reg[7][0]" 
        "DU/dm/memory_reg[7][1]" "DU/dm/memory_reg[7][2]" 
        "DU/dm/memory_reg[7][3]" "DU/dm/memory_reg[7][4]" 
        "DU/dm/memory_reg[7][5]" "DU/dm/memory_reg[7][6]" 
        "DU/dm/memory_reg[7][7]" "DU/dm/memory_reg[7][8]" 
        "DU/dm/memory_reg[7][9]" "DU/dm/memory_reg[7][10]" 
        "DU/dm/memory_reg[7][11]" "DU/dm/memory_reg[7][12]" 
        "DU/dm/memory_reg[7][13]" "DU/dm/memory_reg[7][14]" 
        "DU/dm/memory_reg[7][15]" "DU/pc_current_reg[0]" "DU/pc_current_reg[1]" 
        "DU/pc_current_reg[2]" "DU/pc_current_reg[3]" "DU/pc_current_reg[4]" 
        "DU/pc_current_reg[5]" "DU/pc_current_reg[6]" "DU/pc_current_reg[7]" 
        "DU/pc_current_reg[8]" "DU/pc_current_reg[9]" "DU/pc_current_reg[10]" 
        "DU/pc_current_reg[11]" "DU/pc_current_reg[12]" "DU/pc_current_reg[13]" 
        "DU/pc_current_reg[14]" "DU/pc_current_reg[15]" 
        "DU/reg_file/reg_array_reg[0][0]" "DU/reg_file/reg_array_reg[0][1]" 
        "DU/reg_file/reg_array_reg[0][2]" "DU/reg_file/reg_array_reg[0][3]" 
        "DU/reg_file/reg_array_reg[0][4]" "DU/reg_file/reg_array_reg[0][5]" 
        "DU/reg_file/reg_array_reg[0][6]" "DU/reg_file/reg_array_reg[0][7]" 
        "DU/reg_file/reg_array_reg[0][8]" "DU/reg_file/reg_array_reg[0][9]" 
        "DU/reg_file/reg_array_reg[0][10]" "DU/reg_file/reg_array_reg[0][11]" 
        "DU/reg_file/reg_array_reg[0][12]" "DU/reg_file/reg_array_reg[0][13]" 
        "DU/reg_file/reg_array_reg[0][14]" "DU/reg_file/reg_array_reg[0][15]" 
        "DU/reg_file/reg_array_reg[1][0]" "DU/reg_file/reg_array_reg[1][1]" 
        "DU/reg_file/reg_array_reg[1][2]" "DU/reg_file/reg_array_reg[1][3]" 
        "DU/reg_file/reg_array_reg[1][4]" "DU/reg_file/reg_array_reg[1][5]" 
        "DU/reg_file/reg_array_reg[1][6]" "DU/reg_file/reg_array_reg[1][7]" 
        "DU/reg_file/reg_array_reg[1][8]" "DU/reg_file/reg_array_reg[1][9]" 
        "DU/reg_file/reg_array_reg[1][10]" "DU/reg_file/reg_array_reg[1][11]" 
        "DU/reg_file/reg_array_reg[1][12]" "DU/reg_file/reg_array_reg[1][13]" 
        "DU/reg_file/reg_array_reg[1][14]" "DU/reg_file/reg_array_reg[1][15]" 
        "DU/reg_file/reg_array_reg[2][0]" "DU/reg_file/reg_array_reg[2][1]" 
        "DU/reg_file/reg_array_reg[2][2]" "DU/reg_file/reg_array_reg[2][3]" 
        "DU/reg_file/reg_array_reg[2][4]" "DU/reg_file/reg_array_reg[2][5]";
        ScanIn "TEST_SI3";
        ScanOut "TEST_SO3";
        ScanEnable "TEST_SE";
        ScanMasterClock "scan_clk";
    }
    ScanChain "4" {
        ScanLength 90;
        ScanCells "DU/reg_file/reg_array_reg[2][6]" 
        "DU/reg_file/reg_array_reg[2][7]" "DU/reg_file/reg_array_reg[2][8]" 
        "DU/reg_file/reg_array_reg[2][9]" "DU/reg_file/reg_array_reg[2][10]" 
        "DU/reg_file/reg_array_reg[2][11]" "DU/reg_file/reg_array_reg[2][12]" 
        "DU/reg_file/reg_array_reg[2][13]" "DU/reg_file/reg_array_reg[2][14]" 
        "DU/reg_file/reg_array_reg[2][15]" "DU/reg_file/reg_array_reg[3][0]" 
        "DU/reg_file/reg_array_reg[3][1]" "DU/reg_file/reg_array_reg[3][2]" 
        "DU/reg_file/reg_array_reg[3][3]" "DU/reg_file/reg_array_reg[3][4]" 
        "DU/reg_file/reg_array_reg[3][5]" "DU/reg_file/reg_array_reg[3][6]" 
        "DU/reg_file/reg_array_reg[3][7]" "DU/reg_file/reg_array_reg[3][8]" 
        "DU/reg_file/reg_array_reg[3][9]" "DU/reg_file/reg_array_reg[3][10]" 
        "DU/reg_file/reg_array_reg[3][11]" "DU/reg_file/reg_array_reg[3][12]" 
        "DU/reg_file/reg_array_reg[3][13]" "DU/reg_file/reg_array_reg[3][14]" 
        "DU/reg_file/reg_array_reg[3][15]" "DU/reg_file/reg_array_reg[4][0]" 
        "DU/reg_file/reg_array_reg[4][1]" "DU/reg_file/reg_array_reg[4][2]" 
        "DU/reg_file/reg_array_reg[4][3]" "DU/reg_file/reg_array_reg[4][4]" 
        "DU/reg_file/reg_array_reg[4][5]" "DU/reg_file/reg_array_reg[4][6]" 
        "DU/reg_file/reg_array_reg[4][7]" "DU/reg_file/reg_array_reg[4][8]" 
        "DU/reg_file/reg_array_reg[4][9]" "DU/reg_file/reg_array_reg[4][10]" 
        "DU/reg_file/reg_array_reg[4][11]" "DU/reg_file/reg_array_reg[4][12]" 
        "DU/reg_file/reg_array_reg[4][13]" "DU/reg_file/reg_array_reg[4][14]" 
        "DU/reg_file/reg_array_reg[4][15]" "DU/reg_file/reg_array_reg[5][0]" 
        "DU/reg_file/reg_array_reg[5][1]" "DU/reg_file/reg_array_reg[5][2]" 
        "DU/reg_file/reg_array_reg[5][3]" "DU/reg_file/reg_array_reg[5][4]" 
        "DU/reg_file/reg_array_reg[5][5]" "DU/reg_file/reg_array_reg[5][6]" 
        "DU/reg_file/reg_array_reg[5][7]" "DU/reg_file/reg_array_reg[5][8]" 
        "DU/reg_file/reg_array_reg[5][9]" "DU/reg_file/reg_array_reg[5][10]" 
        "DU/reg_file/reg_array_reg[5][11]" "DU/reg_file/reg_array_reg[5][12]" 
        "DU/reg_file/reg_array_reg[5][13]" "DU/reg_file/reg_array_reg[5][14]" 
        "DU/reg_file/reg_array_reg[5][15]" "DU/reg_file/reg_array_reg[6][0]" 
        "DU/reg_file/reg_array_reg[6][1]" "DU/reg_file/reg_array_reg[6][2]" 
        "DU/reg_file/reg_array_reg[6][3]" "DU/reg_file/reg_array_reg[6][4]" 
        "DU/reg_file/reg_array_reg[6][5]" "DU/reg_file/reg_array_reg[6][6]" 
        "DU/reg_file/reg_array_reg[6][7]" "DU/reg_file/reg_array_reg[6][8]" 
        "DU/reg_file/reg_array_reg[6][9]" "DU/reg_file/reg_array_reg[6][10]" 
        "DU/reg_file/reg_array_reg[6][11]" "DU/reg_file/reg_array_reg[6][12]" 
        "DU/reg_file/reg_array_reg[6][13]" "DU/reg_file/reg_array_reg[6][14]" 
        "DU/reg_file/reg_array_reg[6][15]" "DU/reg_file/reg_array_reg[7][0]" 
        "DU/reg_file/reg_array_reg[7][1]" "DU/reg_file/reg_array_reg[7][2]" 
        "DU/reg_file/reg_array_reg[7][3]" "DU/reg_file/reg_array_reg[7][4]" 
        "DU/reg_file/reg_array_reg[7][5]" "DU/reg_file/reg_array_reg[7][6]" 
        "DU/reg_file/reg_array_reg[7][7]" "DU/reg_file/reg_array_reg[7][8]" 
        "DU/reg_file/reg_array_reg[7][9]" "DU/reg_file/reg_array_reg[7][10]" 
        "DU/reg_file/reg_array_reg[7][11]" "DU/reg_file/reg_array_reg[7][12]" 
        "DU/reg_file/reg_array_reg[7][13]" "DU/reg_file/reg_array_reg[7][14]" 
        "DU/reg_file/reg_array_reg[7][15]";
        ScanIn "TEST_SI4";
        ScanOut "TEST_SO4";
        ScanEnable "TEST_SE";
        ScanMasterClock "scan_clk";
    }
}
Timing  {
    WaveformTable "_default_WFT_" {
        Period '100ns';
        Waveforms {
            "all_inputs" {
                0 {
                    '0ns' D;
                }
            }
            "all_inputs" {
                1 {
                    '0ns' U;
                }
            }
            "all_inputs" {
                Z {
                    '0ns' Z;
                }
            }
            "all_inputs" {
                N {
                    '0ns' N;
                }
            }
            "all_outputs" {
                X {
                    '0ns' X;
                    '40ns' X;
                }
            }
            "all_outputs" {
                H {
                    '0ns' X;
                    '40ns' H;
                }
            }
            "all_outputs" {
                T {
                    '0ns' X;
                    '40ns' T;
                }
            }
            "all_outputs" {
                L {
                    '0ns' X;
                    '40ns' L;
                }
            }
            "scan_clk" {
                P {
                    '0ns' D;
                    '45ns' U;
                    '95ns' D;
                }
            }
            "clk" {
                P {
                    '0ns' D;
                    '45ns' U;
                    '95ns' D;
                }
            }
        }
    }
    WaveformTable "_multiclock_capture_WFT_" {
        Period '100ns';
        Waveforms {
            "all_inputs" {
                0 {
                    '0ns' D;
                }
            }
            "all_inputs" {
                1 {
                    '0ns' U;
                }
            }
            "all_inputs" {
                Z {
                    '0ns' Z;
                }
            }
            "all_inputs" {
                N {
                    '0ns' N;
                }
            }
            "all_outputs" {
                X {
                    '0ns' X;
                    '40ns' X;
                }
            }
            "all_outputs" {
                H {
                    '0ns' X;
                    '40ns' H;
                }
            }
            "all_outputs" {
                T {
                    '0ns' X;
                    '40ns' T;
                }
            }
            "all_outputs" {
                L {
                    '0ns' X;
                    '40ns' L;
                }
            }
            "clk" {
                P {
                    '0ns' D;
                    '45ns' U;
                    '95ns' D;
                }
            }
            "scan_clk" {
                P {
                    '0ns' D;
                    '45ns' U;
                    '95ns' D;
                }
            }
        }
    }
    WaveformTable "_allclock_capture_WFT_" {
        Period '100ns';
        Waveforms {
            "all_inputs" {
                0 {
                    '0ns' D;
                }
            }
            "all_inputs" {
                1 {
                    '0ns' U;
                }
            }
            "all_inputs" {
                Z {
                    '0ns' Z;
                }
            }
            "all_inputs" {
                N {
                    '0ns' N;
                }
            }
            "all_outputs" {
                X {
                    '0ns' X;
                    '40ns' X;
                }
            }
            "all_outputs" {
                H {
                    '0ns' X;
                    '40ns' H;
                }
            }
            "all_outputs" {
                T {
                    '0ns' X;
                    '40ns' T;
                }
            }
            "all_outputs" {
                L {
                    '0ns' X;
                    '40ns' L;
                }
            }
            "clk" {
                P {
                    '0ns' D;
                    '45ns' U;
                    '95ns' D;
                }
            }
            "scan_clk" {
                P {
                    '0ns' D;
                    '45ns' U;
                    '95ns' D;
                }
            }
        }
    }
    WaveformTable "_allclock_launch_WFT_" {
        Period '100ns';
        Waveforms {
            "all_inputs" {
                0 {
                    '0ns' D;
                }
            }
            "all_inputs" {
                1 {
                    '0ns' U;
                }
            }
            "all_inputs" {
                Z {
                    '0ns' Z;
                }
            }
            "all_inputs" {
                N {
                    '0ns' N;
                }
            }
            "all_outputs" {
                X {
                    '0ns' X;
                    '40ns' X;
                }
            }
            "all_outputs" {
                H {
                    '0ns' X;
                    '40ns' H;
                }
            }
            "all_outputs" {
                T {
                    '0ns' X;
                    '40ns' T;
                }
            }
            "all_outputs" {
                L {
                    '0ns' X;
                    '40ns' L;
                }
            }
            "clk" {
                P {
                    '0ns' D;
                    '45ns' U;
                    '95ns' D;
                }
            }
            "scan_clk" {
                P {
                    '0ns' D;
                    '45ns' U;
                    '95ns' D;
                }
            }
        }
    }
    WaveformTable "_allclock_launch_capture_WFT_" {
        Period '100ns';
        Waveforms {
            "all_inputs" {
                0 {
                    '0ns' D;
                }
            }
            "all_inputs" {
                1 {
                    '0ns' U;
                }
            }
            "all_inputs" {
                Z {
                    '0ns' Z;
                }
            }
            "all_inputs" {
                N {
                    '0ns' N;
                }
            }
            "all_outputs" {
                X {
                    '0ns' X;
                    '40ns' X;
                }
            }
            "all_outputs" {
                H {
                    '0ns' X;
                    '40ns' H;
                }
            }
            "all_outputs" {
                T {
                    '0ns' X;
                    '40ns' T;
                }
            }
            "all_outputs" {
                L {
                    '0ns' X;
                    '40ns' L;
                }
            }
            "clk" {
                P {
                    '0ns' D;
                    '45ns' U;
                    '95ns' D;
                }
            }
            "scan_clk" {
                P {
                    '0ns' D;
                    '45ns' U;
                    '95ns' D;
                }
            }
        }
    }
}
PatternBurst Internal_scan {
    MacroDefs Internal_scan;
    Procedures Internal_scan;
    ClockStructures Internal_scan;
}
PatternBurst Internal_scan_occ_bypass {
    MacroDefs Internal_scan_occ_bypass;
    Procedures Internal_scan_occ_bypass;
}
PatternBurst "__burst__" {
    PatList {
        "__pattern__";
    }
}
PatternExec  {
    PatternBurst "__burst__";
}
PatternExec Internal_scan {
    PatternBurst Internal_scan;
}
PatternExec Internal_scan_occ_bypass {
    PatternBurst Internal_scan_occ_bypass;
}
Procedures all_dft_protocol {
    "multiclock_capture" {
        W "_multiclock_capture_WFT_";
        C {
            "clk" = 0;
            "scan_clk" = 0;
            "TEST_SO1" = X;
            "TEST_SO2" = X;
            "TEST_SO3" = X;
            "TEST_SO4" = X;
        }
        V {
            "_po" = ####;
            "_pi" = \r9 #;
        }
    }
    "allclock_capture" {
        W "_allclock_capture_WFT_";
        C {
            "clk" = 0;
            "scan_clk" = 0;
            "TEST_SO1" = X;
            "TEST_SO2" = X;
            "TEST_SO3" = X;
            "TEST_SO4" = X;
        }
        V {
            "_po" = ####;
            "_pi" = \r9 #;
        }
    }
    "allclock_launch" {
        W "_allclock_launch_WFT_";
        C {
            "clk" = 0;
            "scan_clk" = 0;
            "TEST_SO1" = X;
            "TEST_SO2" = X;
            "TEST_SO3" = X;
            "TEST_SO4" = X;
        }
        V {
            "_po" = ####;
            "_pi" = \r9 #;
        }
    }
    "allclock_launch_capture" {
        W "_allclock_launch_capture_WFT_";
        C {
            "clk" = 0;
            "scan_clk" = 0;
            "TEST_SO1" = X;
            "TEST_SO2" = X;
            "TEST_SO3" = X;
            "TEST_SO4" = X;
        }
        V {
            "_po" = ####;
            "_pi" = \r9 #;
        }
    }
}
Procedures Internal_scan {
    "multiclock_capture" {
        W "_multiclock_capture_WFT_";
        C {
            "all_inputs" = 00NNNN0N010;
            "all_outputs" = XXXX;
        }
        F {
            "SCAN_MODE" = 0;
            "TEST_SE" = 0;
            "scan_clk" = P;
            "pll_bypass" = 0;
            "pll_reset" = 0;
        }
        V {
            "_pi" = \r11 #;
            "_po" = ####;
        }
    }
    "allclock_capture" {
        W "_allclock_capture_WFT_";
        C {
            "all_inputs" = 00NNNN0N010;
            "all_outputs" = XXXX;
        }
        F {
            "SCAN_MODE" = 0;
            "TEST_SE" = 0;
            "scan_clk" = P;
            "pll_bypass" = 0;
            "pll_reset" = 0;
        }
        V {
            "_pi" = \r11 #;
            "_po" = ####;
        }
    }
    "allclock_launch" {
        W "_allclock_launch_WFT_";
        C {
            "all_inputs" = 00NNNN0N010;
            "all_outputs" = XXXX;
        }
        F {
            "SCAN_MODE" = 0;
            "TEST_SE" = 0;
            "scan_clk" = P;
            "pll_bypass" = 0;
            "pll_reset" = 0;
        }
        V {
            "_pi" = \r11 #;
            "_po" = ####;
        }
    }
    "allclock_launch_capture" {
        W "_allclock_launch_capture_WFT_";
        C {
            "all_inputs" = 00NNNN0N010;
            "all_outputs" = XXXX;
        }
        F {
            "SCAN_MODE" = 0;
            "TEST_SE" = 0;
            "scan_clk" = P;
            "pll_bypass" = 0;
            "pll_reset" = 0;
        }
        V {
            "_pi" = \r11 #;
            "_po" = ####;
        }
    }
    "load_unload" {
        W "_default_WFT_";
        C {
            "SCAN_MODE" = 0;
            "TEST_SE" = 0;
            "TEST_SI1" = N;
            "TEST_SI2" = N;
            "TEST_SI3" = N;
            "TEST_SI4" = N;
            "clk" = 0;
            "pll_bypass_2" = N;
            "scan_clk" = 0;
            "TEST_SO1" = X;
            "TEST_SO2" = X;
            "TEST_SO3" = X;
            "TEST_SO4" = X;
            "pll_bypass" = 0;
            "pll_reset" = 0;
        }
        "Internal_scan_pre_shift" : V {
            "_clk" = 0P;
            "TEST_SE" = 1;
        }
        Shift {
            V {
                "_clk" = PP;
                "_si" = ####;
                "_so" = ####;
            }
        }
    }
}
Procedures Internal_scan_occ_bypass {
    "multiclock_capture" {
        W "_multiclock_capture_WFT_";
        C {
            "all_inputs" = 00NNNN0N010;
            "all_outputs" = XXXX;
        }
        F {
            "SCAN_MODE" = 0;
            "pll_bypass" = 1;
            "pll_reset" = 0;
        }
        V {
            "_pi" = \r11 #;
            "_po" = ####;
        }
    }
    "allclock_capture" {
        W "_allclock_capture_WFT_";
        C {
            "all_inputs" = 00NNNN0N010;
            "all_outputs" = XXXX;
        }
        F {
            "SCAN_MODE" = 0;
            "pll_bypass" = 1;
            "pll_reset" = 0;
        }
        V {
            "_pi" = \r11 #;
            "_po" = ####;
        }
    }
    "allclock_launch" {
        W "_allclock_launch_WFT_";
        C {
            "all_inputs" = 00NNNN0N010;
            "all_outputs" = XXXX;
        }
        F {
            "SCAN_MODE" = 0;
            "pll_bypass" = 1;
            "pll_reset" = 0;
        }
        V {
            "_pi" = \r11 #;
            "_po" = ####;
        }
    }
    "allclock_launch_capture" {
        W "_allclock_launch_capture_WFT_";
        C {
            "all_inputs" = 00NNNN0N010;
            "all_outputs" = XXXX;
        }
        F {
            "SCAN_MODE" = 0;
            "pll_bypass" = 1;
            "pll_reset" = 0;
        }
        V {
            "_pi" = \r11 #;
            "_po" = ####;
        }
    }
    "load_unload" {
        W "_default_WFT_";
        C {
            "SCAN_MODE" = 0;
            "TEST_SE" = 0;
            "TEST_SI1" = N;
            "TEST_SI2" = N;
            "TEST_SI3" = N;
            "TEST_SI4" = N;
            "clk" = 0;
            "pll_bypass_2" = N;
            "scan_clk" = 0;
            "TEST_SO1" = X;
            "TEST_SO2" = X;
            "TEST_SO3" = X;
            "TEST_SO4" = X;
            "pll_bypass" = 1;
            "pll_reset" = 0;
        }
        "Internal_scan_occ_bypass_pre_shift" : V {
            "TEST_SE" = 1;
        }
        Shift {
            V {
                "_clk" = PP;
                "_si" = ####;
                "_so" = ####;
            }
        }
    }
}
Procedures Mission_mode {
    "multiclock_capture" {
        W "_multiclock_capture_WFT_";
        C {
            "all_inputs" = 1NNNNN0N000;
            "all_outputs" = XXXX;
        }
        F {
            "SCAN_MODE" = 1;
            "scan_clk" = P;
            "pll_bypass" = 0;
            "pll_reset" = 0;
        }
        V {
            "_pi" = \r11 #;
            "_po" = ####;
        }
    }
    "allclock_capture" {
        W "_allclock_capture_WFT_";
        C {
            "all_inputs" = 1NNNNN0N000;
            "all_outputs" = XXXX;
        }
        F {
            "SCAN_MODE" = 1;
            "scan_clk" = P;
            "pll_bypass" = 0;
            "pll_reset" = 0;
        }
        V {
            "_pi" = \r11 #;
            "_po" = ####;
        }
    }
    "allclock_launch" {
        W "_allclock_launch_WFT_";
        C {
            "all_inputs" = 1NNNNN0N000;
            "all_outputs" = XXXX;
        }
        F {
            "SCAN_MODE" = 1;
            "scan_clk" = P;
            "pll_bypass" = 0;
            "pll_reset" = 0;
        }
        V {
            "_pi" = \r11 #;
            "_po" = ####;
        }
    }
    "allclock_launch_capture" {
        W "_allclock_launch_capture_WFT_";
        C {
            "all_inputs" = 1NNNNN0N000;
            "all_outputs" = XXXX;
        }
        F {
            "SCAN_MODE" = 1;
            "scan_clk" = P;
            "pll_bypass" = 0;
            "pll_reset" = 0;
        }
        V {
            "_pi" = \r11 #;
            "_po" = ####;
        }
    }
}
MacroDefs all_dft_protocol {
    "test_setup" {
        W "_default_WFT_";
        V {
            "clk" = 0;
            "scan_clk" = 0;
        }
        V {
        }
    }
}
MacroDefs Internal_scan {
    "test_setup" {
        W "_default_WFT_";
        C {
            "all_inputs" = \r11 N;
            "all_outputs" = XXXX;
        }
        V {
            "SCAN_MODE" = 0;
            "clk" = 0;
            "scan_clk" = 0;
            "pll_reset" = 1;
        }
        V {
            "TEST_SE" = 0;
            "pll_bypass" = 0;
            "pll_reset" = 0;
        }
    }
}
MacroDefs Internal_scan_occ_bypass {
    "test_setup" {
        W "_default_WFT_";
        C {
            "all_inputs" = \r11 N;
            "all_outputs" = XXXX;
        }
        V {
            "SCAN_MODE" = 0;
            "clk" = 0;
            "scan_clk" = 0;
        }
        V {
            "TEST_SE" = 0;
            "pll_bypass" = 1;
            "pll_reset" = 0;
        }
    }
}
MacroDefs Mission_mode {
    "test_setup" {
        W "_default_WFT_";
        C {
            "all_inputs" = \r11 N;
            "all_outputs" = XXXX;
        }
        V {
            "SCAN_MODE" = 1;
            "clk" = 0;
            "scan_clk" = 0;
            "pll_reset" = 1;
        }
        V {
            "pll_bypass" = 0;
            "pll_reset" = 0;
        }
    }
}
ClockStructures Internal_scan {
    PLLStructures "occ_snps_pll_controller" {
        PLLCycles 4;
        Clocks {
            "occ_snps_pll_controller/fast_clk" PLL {
                OffState 0;
            }
            "occ_snps_pll_controller/U2/U2/Q" Internal {
                OffState 0;
                PLLSource "occ_snps_pll_controller/fast_clk";
                ExternalSource "scan_clk";
                Cycle 0 "snps_clk_chain_0/clk_ctrl_data[0]" 1;
                Cycle 1 "snps_clk_chain_0/clk_ctrl_data[1]" 1;
                Cycle 2 "snps_clk_chain_0/clk_ctrl_data[2]" 1;
                Cycle 3 "snps_clk_chain_0/clk_ctrl_data[3]" 1;
            }
        }
    }
}
Environment "Risc_16_bit" {
    CTL  {
    }
    CTL all_dft_user {
        TestMode ForInheritOnly;
        Internal {
            "clk" {
                DataType ScanMasterClock MasterClock {
                    ActiveState ForceUp;
                }
            }
            "pll_bypass_2" {
                DataType TestControl User snps_pll_bypass {
                    ActiveState ForceUp;
                }
            }
            "scan_clk" {
                DataType ScanMasterClock MasterClock {
                    ActiveState ForceUp;
                }
            }
        }
    }
    CTL all_dft_protocol {
        TestMode ForInheritOnly;
        Inherit all_dft_user;
        DomainReferences {
            SignalGroups all_dft_protocol;
            Procedures all_dft_protocol;
            MacroDefs all_dft_protocol;
        }
    }
    CTL all_dft {
        TestMode ForInheritOnly;
        Inherit all_dft_protocol;
        Internal {
            "TEST_SE" {
                CaptureClock "scan_clk" {
                    LeadingEdge;
                }
            }
            "clk" {
                DataType User OCC_PLL_CLOCK_PORT User "scan_clk";
            }
        }
    }
    CTL Internal_scan_user {
        TestMode ForInheritOnly;
        Inherit all_dft;
        Internal {
            "TEST_SE" {
                CaptureClock "scan_clk" {
                    LeadingEdge;
                }
            }
        }
    }
    CTL Internal_scan_protocol {
        TestMode ForInheritOnly;
        Inherit Internal_scan_user;
        Internal {
            "TEST_SE" {
                CaptureClock "scan_clk" {
                    LeadingEdge;
                }
            }
        }
    }
    CTL Internal_scan {
        TestMode InternalTest;
        Focus Top {
            PatternBurst Internal_scan Internal_scan_occ_bypass;
        }
        Inherit Internal_scan_protocol;
        DomainReferences {
            SignalGroups Internal_scan;
            ScanStructures Internal_scan;
            MacroDefs Internal_scan Internal_scan_occ_bypass;
            Procedures Internal_scan Internal_scan_occ_bypass;
            ClockStructures Internal_scan;
        }
        Internal {
            "SCAN_MODE" {
                DataType TestMode {
                    ActiveState ForceDown;
                }
            }
            "TEST_SE" {
                CaptureClock "scan_clk" {
                    LeadingEdge;
                }
                DataType ScanEnable {
                    ActiveState ForceUp;
                }
            }
            "TEST_SI1" {
                IsConnected In {
                    Signal "DU/dm/memory_reg[0][0]/SI";
                }
                CaptureClock "clk" {
                    LeadingEdge;
                }
                DataType ScanDataIn {
                    ScanDataType Internal;
                }
                ScanStyle MultiplexedData;
            }
            "TEST_SI2" {
                CaptureClock "clk" {
                    TrailingEdge;
                }
                DataType ScanDataIn User "OCC_chain" {
                    ScanDataType Internal;
                }
                ScanStyle MultiplexedData;
            }
            "TEST_SI3" {
                IsConnected In {
                    Signal "DU/dm/memory_reg[5][11]/SI";
                }
                CaptureClock "clk" {
                    LeadingEdge;
                }
                DataType ScanDataIn {
                    ScanDataType Internal;
                }
                ScanStyle MultiplexedData;
            }
            "TEST_SI4" {
                IsConnected In {
                    Signal "DU/reg_file/reg_array_reg[2][6]/SI";
                }
                CaptureClock "clk" {
                    LeadingEdge;
                }
                DataType ScanDataIn {
                    ScanDataType Internal;
                }
                ScanStyle MultiplexedData;
            }
            "clk" {
                DataType ScanMasterClock MasterClock;
            }
            "scan_clk" {
                DataType ScanMasterClock MasterClock;
            }
            "TEST_SO1" {
                IsConnected Out {
                    Signal "DU/dm/memory_reg[5][10]/Q";
                }
                LaunchClock "clk" {
                    LeadingEdge;
                }
                DataType ScanDataOut {
                    ScanDataType Internal;
                }
                ScanStyle MultiplexedData;
            }
            "TEST_SO2" {
                LaunchClock "clk" {
                    TrailingEdge;
                }
                DataType ScanDataOut {
                    ScanDataType Internal;
                }
                ScanStyle MultiplexedData;
            }
            "TEST_SO3" {
                IsConnected Out {
                    Signal "DU/reg_file/reg_array_reg[2][5]/Q";
                }
                LaunchClock "clk" {
                    LeadingEdge;
                }
                DataType ScanDataOut {
                    ScanDataType Internal;
                }
                ScanStyle MultiplexedData;
            }
            "TEST_SO4" {
                IsConnected Out {
                    Signal "DU/reg_file/reg_array_reg[7][15]/Q";
                }
                LaunchClock "clk" {
                    LeadingEdge;
                }
                DataType ScanDataOut {
                    ScanDataType Internal;
                }
                ScanStyle MultiplexedData;
            }
            "pll_bypass" {
                DataType User snps_pll_bypass {
                    ActiveState ForceUp;
                }
            }
            "pll_reset" {
                DataType User snps_pll_reset {
                    ActiveState ForceUp;
                }
            }
        }
    }
    CTL Mission_mode_user {
        TestMode ForInheritOnly;
        Inherit all_dft;
        Internal {
            "TEST_SE" {
                CaptureClock "scan_clk" {
                    LeadingEdge;
                }
            }
        }
    }
    CTL Mission_mode_protocol {
        TestMode ForInheritOnly;
        Inherit Mission_mode_user;
        Internal {
            "TEST_SE" {
                CaptureClock "scan_clk" {
                    LeadingEdge;
                }
            }
        }
    }
    CTL Mission_mode {
        TestMode Normal;
        Inherit Mission_mode_protocol;
        DomainReferences {
            MacroDefs Mission_mode;
            Procedures Mission_mode;
        }
        Internal {
            "SCAN_MODE" {
                DataType TestMode;
            }
            "TEST_SE" {
                CaptureClock "scan_clk" {
                    LeadingEdge;
                }
                DataType Functional;
            }
            "TEST_SI1" {
                DataType Functional;
            }
            "TEST_SI2" {
                DataType Functional;
            }
            "TEST_SI3" {
                DataType Functional;
            }
            "TEST_SI4" {
                DataType Functional;
            }
            "clk" {
                DataType Functional;
            }
            "pll_bypass_2" {
                DataType Functional;
            }
            "scan_clk" {
                DataType Functional;
            }
            "TEST_SO1" {
                DataType Functional;
            }
            "TEST_SO2" {
                DataType Functional;
            }
            "TEST_SO3" {
                DataType Functional;
            }
            "TEST_SO4" {
                DataType Functional;
            }
            "pll_bypass" {
                DataType Functional;
            }
            "pll_reset" {
                DataType Functional;
            }
        }
    }
}
Environment dftSpec {
    CTL  {
    }
    CTL all_dft {
        TestMode ForInheritOnly;
    }
    CTL Internal_scan {
        TestMode InternalTest;
        Inherit all_dft;
    }
    CTL Mission_mode {
        TestMode InternalTest;
        Inherit all_dft;
    }
}

