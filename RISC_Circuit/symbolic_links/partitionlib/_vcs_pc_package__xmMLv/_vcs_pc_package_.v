
/* Source file "partitionlib/_vcs_pc_package__xmMLv/_vcs_pc_package_.v", line 1
	*/
(* VCS_LogicalLibrary = "VCS_PARTCOMP_LIB" *)
config pc__vcs_pc_package__config;
	design pc__vcs_pc_package_;
	cell std liblist DEFAULT;
endconfig
`timescale 1ps/1fs
`noportcoerce
`noinline
/* Source file "", line 0 */

(* PARTCOMP_DFT_PKG_WRAPPER = 1 *) 
(* VCS_LogicalLibrary = "VCS_PARTCOMP_LIB" *)

`timescale 1ps/1fs
(* orig_name = "pc__vcs_pc_package_" *)
module pc__vcs_pc_package_;

	initial begin : XmrProcess
	  $$compile_pkg(1, "", "std");
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
