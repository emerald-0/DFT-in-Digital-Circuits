verdiSetActWin -dock widgetDock_<Message>
debImport "-fsdb" "wavefrom.fsdb"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
simSetSimulator "-vcssv" -exec \
           "/home/vlsilab/sagar_harsh_soham/RISC/symbolic_links/simv" -args \
           "-ucli +tmax_parallel=7 +define_tmax_usf_debug_strobe_mode=1"
nsMsgSwitchTab -tab general
debImport "-dbdir" \
          "/home/vlsilab/sagar_harsh_soham/RISC/symbolic_links/simv.daidir"
debLoadSimResult \
           /home/vlsilab/sagar_harsh_soham/RISC/symbolic_links/wavefrom.fsdb
wvCreateWindow
verdiSetActWin -win $_nWave2
srcSignalViewSelect "Risc_16_bit_test.cur_pat"
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "Risc_16_bit_test.cur_pat"
schCreateWindow -win $_nTrace1 -level 1 -fanin -signal "Risc_16_bit_test.cur_pat"
verdiSetActWin -win $_nSchema_3
schCloseWindow -win $_nSchema3
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "Risc_16_bit_test.cur_pat"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcSignalViewSelect "Risc_16_bit_test.cur_stmt"
srcSignalViewSelect "Risc_16_bit_test.cur_stmt"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcHBSelect "Risc_16_bit_test.dut" -win $_nTrace1
srcHBSelect "Risc_16_bit_test.dut" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "Risc_16_bit_test.dut" -win $_nTrace1
srcSetScope "Risc_16_bit_test.dut" -delim "." -win $_nTrace1
srcHBSelect "Risc_16_bit_test.dut" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewFilterByType -all off
srcSignalViewFilterByType -output on
srcSignalViewFilterByType -inout on
srcSignalViewSelect "Risc_16_bit_test.dut.TEST_SI1"
srcSignalViewSelect "Risc_16_bit_test.dut.TEST_SI1" "Risc_16_bit_test.dut.clk"
srcSignalViewSelect "Risc_16_bit_test.dut.TEST_SI1" "Risc_16_bit_test.dut.clk" \
           "Risc_16_bit_test.dut.TEST_SI2"
srcSignalViewSelect "Risc_16_bit_test.dut.TEST_SI1" "Risc_16_bit_test.dut.clk" \
           "Risc_16_bit_test.dut.TEST_SI2" "Risc_16_bit_test.dut.TEST_SI3"
srcSignalViewSelect "Risc_16_bit_test.dut.TEST_SI1" "Risc_16_bit_test.dut.clk" \
           "Risc_16_bit_test.dut.TEST_SI2" "Risc_16_bit_test.dut.TEST_SI3" \
           "Risc_16_bit_test.dut.TEST_SI4"
srcSignalViewSelect "Risc_16_bit_test.dut.TEST_SI1" "Risc_16_bit_test.dut.clk" \
           "Risc_16_bit_test.dut.TEST_SI2" "Risc_16_bit_test.dut.TEST_SI3" \
           "Risc_16_bit_test.dut.TEST_SI4" "Risc_16_bit_test.dut.TEST_SE"
srcSignalViewSelect "Risc_16_bit_test.dut.TEST_SI1" "Risc_16_bit_test.dut.clk" \
           "Risc_16_bit_test.dut.TEST_SI2" "Risc_16_bit_test.dut.TEST_SI3" \
           "Risc_16_bit_test.dut.TEST_SI4" "Risc_16_bit_test.dut.TEST_SE" \
           "Risc_16_bit_test.dut.TEST_SO1"
srcSignalViewSelect "Risc_16_bit_test.dut.TEST_SI1" "Risc_16_bit_test.dut.clk" \
           "Risc_16_bit_test.dut.TEST_SI2" "Risc_16_bit_test.dut.TEST_SI3" \
           "Risc_16_bit_test.dut.TEST_SI4" "Risc_16_bit_test.dut.TEST_SE" \
           "Risc_16_bit_test.dut.TEST_SO1" "Risc_16_bit_test.dut.TEST_SO2"
srcSignalViewSelect "Risc_16_bit_test.dut.TEST_SI1" "Risc_16_bit_test.dut.clk" \
           "Risc_16_bit_test.dut.TEST_SI2" "Risc_16_bit_test.dut.TEST_SI3" \
           "Risc_16_bit_test.dut.TEST_SI4" "Risc_16_bit_test.dut.TEST_SE" \
           "Risc_16_bit_test.dut.TEST_SO1" "Risc_16_bit_test.dut.TEST_SO2" \
           "Risc_16_bit_test.dut.TEST_SO3"
srcSignalViewSelect "Risc_16_bit_test.dut.TEST_SI1" "Risc_16_bit_test.dut.clk" \
           "Risc_16_bit_test.dut.TEST_SI2" "Risc_16_bit_test.dut.TEST_SI3" \
           "Risc_16_bit_test.dut.TEST_SI4" "Risc_16_bit_test.dut.TEST_SE" \
           "Risc_16_bit_test.dut.TEST_SO1" "Risc_16_bit_test.dut.TEST_SO2" \
           "Risc_16_bit_test.dut.TEST_SO3" "Risc_16_bit_test.dut.TEST_SO4"
srcSignalViewSelect "Risc_16_bit_test.dut.TEST_SI1" "Risc_16_bit_test.dut.clk" \
           "Risc_16_bit_test.dut.TEST_SI2" "Risc_16_bit_test.dut.TEST_SI3" \
           "Risc_16_bit_test.dut.TEST_SI4" "Risc_16_bit_test.dut.TEST_SE" \
           "Risc_16_bit_test.dut.TEST_SO1" "Risc_16_bit_test.dut.TEST_SO2" \
           "Risc_16_bit_test.dut.TEST_SO3" "Risc_16_bit_test.dut.TEST_SO4" \
           "Risc_16_bit_test.dut.scan_clk"
srcSignalViewSelect "Risc_16_bit_test.dut.TEST_SI1" "Risc_16_bit_test.dut.clk" \
           "Risc_16_bit_test.dut.TEST_SI2" "Risc_16_bit_test.dut.TEST_SI3" \
           "Risc_16_bit_test.dut.TEST_SI4" "Risc_16_bit_test.dut.TEST_SE" \
           "Risc_16_bit_test.dut.TEST_SO1" "Risc_16_bit_test.dut.TEST_SO2" \
           "Risc_16_bit_test.dut.TEST_SO3" "Risc_16_bit_test.dut.TEST_SO4" \
           "Risc_16_bit_test.dut.scan_clk" "Risc_16_bit_test.dut.SCAN_MODE"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_2
verdiSetActWin -win $_nWave2
debExit
