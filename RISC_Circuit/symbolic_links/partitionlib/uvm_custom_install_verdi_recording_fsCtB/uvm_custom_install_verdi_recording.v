
/* Source file "
	partitionlib/uvm_custom_install_verdi_recording_fsCtB/uvm_custom_install_verdi_recording.v
	", line 1 */
(* VCS_LogicalLibrary = "VCS_PARTCOMP_LIB" *)
config pc_uvm_custom_install_verdi_recording_config;
	design pc_uvm_custom_install_verdi_recording DEFAULT.
		uvm_custom_install_verdi_recording DEFAULT.Risc_16_bit_test;
	cell uvm_custom_install_verdi_recording liblist DEFAULT;
	cell Risc_16_bit_test liblist DEFAULT;
endconfig
`timescale 1ns/1fs
`noportcoerce
`noinline
/* Source file "", line 0 */

(* PARTCOMP_WRAPPER = 1, PARTCOMP_DOLLAR_UNIT = "DEFAULT._vcs_unit__17393910" *)

(* VCS_LogicalLibrary = "VCS_PARTCOMP_LIB" *)

`timescale 1ns/1fs
(* orig_name = "pc_uvm_custom_install_verdi_recording" *)
module pc_uvm_custom_install_verdi_recording;

	initial begin : XmrProcess
	  $$compile_pkg(0, "", "_vcs_unit__17393910");
	end
	initial begin : DebugProcess
	  $$xmr_debugUsedPliTf("$countdrivers", "$dumpports", "$dumpportsall", 
		  "$dumpportsflush", "$dumpportslimit", "$dumpportsoff", 
		  "$dumpportson", "$fs_inject_evcd_vectors", 
		  "$fsdbAddRuntimeSignal", "$fsdbAutoSwitchDumpfile", 
		  "$fsdbDisplay", "$fsdbLog", "$fsdbSubstituteHier", 
		  "$fsdbSuppress", "$fsdbSuppressClassMethod", 
		  "$fsdbSuppressClassProp", "$fsdbSwitchDumpfile", 
		  "$fsdbTrans_add_attribute", "$fsdbTrans_add_attribute_expand",
		  "$fsdbTrans_add_relation", "$fsdbTrans_add_scope_attribute", 
		  "$fsdbTrans_add_stream_attribute", "$fsdbTrans_add_tag", 
		  "$fsdbTrans_begin", "$fsdbTrans_create_stream_begin", 
		  "$fsdbTrans_create_stream_end", "$fsdbTrans_define_attribute",
		  "$fsdbTrans_end", "$fsdbTrans_get_error_code", 
		  "$fsdbTrans_set_label", "$fsim_register_strobe", 
		  "$fsim_register_verify", "$lsi_dumpports", "$ridbDump", 
		  "$simlearn", "$sps_add_attribute", "$sps_add_relation", 
		  "$sps_begin_transaction", "$sps_create_transaction_stream", 
		  "$sps_end_transaction", "$sps_flush_file", 
		  "$sps_free_transaction", "$sps_interactive", "$sps_test", 
		  "$sps_update_label", "$vcs_get_object_id", 
		  "$vcs_get_object_type", "$vcsmemprof");
	end
endmodule
