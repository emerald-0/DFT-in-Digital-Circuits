verdiSetActWin -dock widgetDock_<Message>
debImport "-fsdb" "wavefrom.fsdb"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
simSetSimulator "-vcssv" -exec \
           "/home/vlsilab/sagar_harsh_soham/aes-master/src/symbolic_links/simv" \
           -args \
           "+tmax_parallel -ucli +tmax_parallel=7 +define_tmax_usf_debug_strobe_mode=1"
nsMsgSwitchTab -tab general
debImport "-dbdir" \
          "/home/vlsilab/sagar_harsh_soham/aes-master/src/symbolic_links/simv.daidir"
debLoadSimResult \
           /home/vlsilab/sagar_harsh_soham/aes-master/src/symbolic_links/wavefrom.fsdb
wvCreateWindow
verdiSetActWin -win $_nWave2
srcSignalViewSelect "aes_test.cur_pat"
srcSignalViewSelect "aes_test.cur_pat"
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcSignalViewSelect "aes_test.cur_stmt"
srcSignalViewSelect "aes_test.cur_stmt"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcHBSelect "aes_test.dut" -win $_nTrace1
srcHBSelect "aes_test.dut" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcSetScope "aes_test.dut" -delim "." -win $_nTrace1
srcHBSelect "aes_test.dut" -win $_nTrace1
srcHBSelect "aes_test" -win $_nTrace1
srcSetScope "aes_test" -delim "." -win $_nTrace1
srcHBSelect "aes_test" -win $_nTrace1
verdiSetActWin -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
debExit
