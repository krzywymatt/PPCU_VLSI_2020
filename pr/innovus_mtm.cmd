#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sat May  2 20:14:24 2020                
#                                                     
#######################################################

#@(#)CDS: Innovus v17.13-s098_1 (64bit) 02/08/2018 11:26 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 17.13-s098_1 NR180117-1602/17_13-UB (database version 2.30, 414.7.1) {superthreading v1.44}
#@(#)CDS: AAE 17.13-s036 (64bit) 02/08/2018 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 17.13-s031_1 () Feb  1 2018 09:16:44 ( )
#@(#)CDS: SYNTECH 17.13-s011_1 () Jan 14 2018 01:24:42 ( )
#@(#)CDS: CPE v17.13-s062
#@(#)CDS: IQRC/TQRC 16.1.1-s220 (64bit) Fri Aug  4 09:53:48 PDT 2017 (Linux 2.6.18-194.el5)

set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
set_db init_power_nets {vddd vddb}
set_db init_ground_nets {gndd gndb}
is_attribute flow_edit_wildcard_end_steps -obj_type root
set_db flow_edit_wildcard_end_steps {}
is_attribute flow_edit_wildcard_start_steps -obj_type root
set_db flow_edit_wildcard_start_steps {}
is_attribute flow_footer_tcl -obj_type root
set_db flow_footer_tcl {}
is_attribute flow_header_tcl -obj_type root
set_db flow_header_tcl {}
is_attribute flow_metadata -obj_type root
set_db flow_metadata {}
is_attribute flow_step_begin_tcl -obj_type root
set_db flow_step_begin_tcl {}
is_attribute flow_step_check_tcl -obj_type root
set_db flow_step_check_tcl {}
is_attribute flow_step_end_tcl -obj_type root
set_db flow_step_end_tcl {}
is_attribute flow_step_order -obj_type root
set_db flow_step_order {}
is_attribute flow_summary_tcl -obj_type root
set_db flow_summary_tcl {}
is_attribute flow_template_feature_definition -obj_type root
set_db flow_template_feature_definition {}
is_attribute flow_template_type -obj_type root
set_db flow_template_type {}
is_attribute flow_template_version -obj_type root
set_db flow_template_version {}
is_attribute flow_user_templates -obj_type root
set_db flow_user_templates {}
is_attribute flow_branch -obj_type root
set_db flow_branch {}
is_attribute flow_caller_data -obj_type root
set_db flow_caller_data {}
is_attribute flow_current -obj_type root
set_db flow_current {}
is_attribute flow_hier_path -obj_type root
set_db flow_hier_path {}
is_attribute flow_database_directory -obj_type root
set_db flow_database_directory dbs
is_attribute flow_exit_when_done -obj_type root
set_db flow_exit_when_done false
is_attribute flow_history -obj_type root
set_db flow_history {}
is_attribute flow_log_directory -obj_type root
set_db flow_log_directory logs
is_attribute flow_mail_on_error -obj_type root
set_db flow_mail_on_error false
is_attribute flow_mail_to -obj_type root
set_db flow_mail_to {}
is_attribute flow_metrics_file -obj_type root
set_db flow_metrics_file {}
is_attribute flow_metrics_snapshot_parent_uuid -obj_type root
set_db flow_metrics_snapshot_parent_uuid {}
is_attribute flow_metrics_snapshot_uuid -obj_type root
set_db flow_metrics_snapshot_uuid 09aac58a
is_attribute flow_overwrite_database -obj_type root
set_db flow_overwrite_database false
is_attribute flow_report_directory -obj_type root
set_db flow_report_directory reports
is_attribute flow_run_tag -obj_type root
set_db flow_run_tag {}
is_attribute flow_schedule -obj_type root
set_db flow_schedule {}
is_attribute flow_script -obj_type root
set_db flow_script {}
is_attribute flow_starting_db -obj_type root
set_db flow_starting_db {}
is_attribute flow_status_file -obj_type root
set_db flow_status_file {}
is_attribute flow_step_canonical_current -obj_type root
set_db flow_step_canonical_current {}
is_attribute flow_step_current -obj_type root
set_db flow_step_current {}
is_attribute flow_step_last -obj_type root
set_db flow_step_last {}
is_attribute flow_step_last_msg -obj_type root
set_db flow_step_last_msg {}
is_attribute flow_step_last_status -obj_type root
set_db flow_step_last_status not_run
is_attribute flow_step_next -obj_type root
set_db flow_step_next {}
is_attribute flow_working_directory -obj_type root
set_db flow_working_directory .
read_mmmc RESULTS/mtmAlu.mmmc.tcl
read_physical -lef {/cad/dk/umc180/SUS/SUSLIB_UCL_tech.lef /cad/dk/umc180/SUS/SUSLIB_UCL.lef}
read_netlist RESULTS/mtmAlu.v
init_design
read_metric -id current RESULTS/mtmAlu.metrics.json
set_db timing_apply_default_primary_input_assertion false
set_db timing_clock_phase_propagation both
set_db timing_analysis_async_checks no_async
set_db extract_rc_layer_independent 1
set_db design_process_node 180
set_db place_global_reorder_scan false
set_db extract_rc_engine pre_route
is_attribute -obj_type port original_name
is_attribute -obj_type pin original_name
is_attribute -obj_type pin is_phase_inverted
set_db port:mtm_Alu/clk .original_name clk
set_db port:mtm_Alu/rst_n .original_name rst_n
set_db port:mtm_Alu/sin .original_name sin
set_db port:mtm_Alu/sout .original_name sout
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[0]/NQ} .original_name {u_mtm_Alu_core/data_C[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[0]/Q} .original_name {u_mtm_Alu_core/data_C[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[1]/NQ} .original_name {u_mtm_Alu_core/data_C[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[1]/Q} .original_name {u_mtm_Alu_core/data_C[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[2]/NQ} .original_name {u_mtm_Alu_core/data_C[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[2]/Q} .original_name {u_mtm_Alu_core/data_C[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[3]/NQ} .original_name {u_mtm_Alu_core/data_C[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[3]/Q} .original_name {u_mtm_Alu_core/data_C[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[4]/NQ} .original_name {u_mtm_Alu_core/data_C[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[4]/Q} .original_name {u_mtm_Alu_core/data_C[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[5]/NQ} .original_name {u_mtm_Alu_core/data_C[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[5]/Q} .original_name {u_mtm_Alu_core/data_C[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[6]/NQ} .original_name {u_mtm_Alu_core/data_C[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[6]/Q} .original_name {u_mtm_Alu_core/data_C[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[7]/NQ} .original_name {u_mtm_Alu_core/data_C[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[7]/Q} .original_name {u_mtm_Alu_core/data_C[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[8]/NQ} .original_name {u_mtm_Alu_core/data_C[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[8]/Q} .original_name {u_mtm_Alu_core/data_C[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[9]/NQ} .original_name {u_mtm_Alu_core/data_C[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[9]/Q} .original_name {u_mtm_Alu_core/data_C[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[10]/NQ} .original_name {u_mtm_Alu_core/data_C[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[10]/Q} .original_name {u_mtm_Alu_core/data_C[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[11]/NQ} .original_name {u_mtm_Alu_core/data_C[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[11]/Q} .original_name {u_mtm_Alu_core/data_C[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[12]/NQ} .original_name {u_mtm_Alu_core/data_C[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[12]/Q} .original_name {u_mtm_Alu_core/data_C[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[13]/NQ} .original_name {u_mtm_Alu_core/data_C[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[13]/Q} .original_name {u_mtm_Alu_core/data_C[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[14]/NQ} .original_name {u_mtm_Alu_core/data_C[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[14]/Q} .original_name {u_mtm_Alu_core/data_C[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[15]/NQ} .original_name {u_mtm_Alu_core/data_C[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[15]/Q} .original_name {u_mtm_Alu_core/data_C[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[16]/NQ} .original_name {u_mtm_Alu_core/data_C[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[16]/Q} .original_name {u_mtm_Alu_core/data_C[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[17]/NQ} .original_name {u_mtm_Alu_core/data_C[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[17]/Q} .original_name {u_mtm_Alu_core/data_C[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[18]/NQ} .original_name {u_mtm_Alu_core/data_C[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[18]/Q} .original_name {u_mtm_Alu_core/data_C[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[19]/NQ} .original_name {u_mtm_Alu_core/data_C[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[19]/Q} .original_name {u_mtm_Alu_core/data_C[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[20]/NQ} .original_name {u_mtm_Alu_core/data_C[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[20]/Q} .original_name {u_mtm_Alu_core/data_C[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[21]/NQ} .original_name {u_mtm_Alu_core/data_C[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[21]/Q} .original_name {u_mtm_Alu_core/data_C[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[22]/NQ} .original_name {u_mtm_Alu_core/data_C[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[22]/Q} .original_name {u_mtm_Alu_core/data_C[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[23]/NQ} .original_name {u_mtm_Alu_core/data_C[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[23]/Q} .original_name {u_mtm_Alu_core/data_C[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[24]/NQ} .original_name {u_mtm_Alu_core/data_C[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[24]/Q} .original_name {u_mtm_Alu_core/data_C[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[25]/NQ} .original_name {u_mtm_Alu_core/data_C[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[25]/Q} .original_name {u_mtm_Alu_core/data_C[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[26]/NQ} .original_name {u_mtm_Alu_core/data_C[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[26]/Q} .original_name {u_mtm_Alu_core/data_C[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[27]/NQ} .original_name {u_mtm_Alu_core/data_C[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[27]/Q} .original_name {u_mtm_Alu_core/data_C[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[28]/NQ} .original_name {u_mtm_Alu_core/data_C[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[28]/Q} .original_name {u_mtm_Alu_core/data_C[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[29]/NQ} .original_name {u_mtm_Alu_core/data_C[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[29]/Q} .original_name {u_mtm_Alu_core/data_C[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[30]/NQ} .original_name {u_mtm_Alu_core/data_C[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[30]/Q} .original_name {u_mtm_Alu_core/data_C[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[31]/NQ} .original_name {u_mtm_Alu_core/data_C[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_C_reg[31]/Q} .original_name {u_mtm_Alu_core/data_C[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_crc_reg[0]/NQ} .original_name {u_mtm_Alu_core/data_crc[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_crc_reg[0]/Q} .original_name {u_mtm_Alu_core/data_crc[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_crc_reg[1]/NQ} .original_name {u_mtm_Alu_core/data_crc[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_crc_reg[1]/Q} .original_name {u_mtm_Alu_core/data_crc[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_crc_reg[2]/NQ} .original_name {u_mtm_Alu_core/data_crc[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_crc_reg[2]/Q} .original_name {u_mtm_Alu_core/data_crc[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_flag_reg[0]/NQ} .original_name {u_mtm_Alu_core/data_flag[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_flag_reg[0]/Q} .original_name {u_mtm_Alu_core/data_flag[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_flag_reg[1]/NQ} .original_name {u_mtm_Alu_core/data_flag[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_flag_reg[1]/Q} .original_name {u_mtm_Alu_core/data_flag[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_flag_reg[2]/NQ} .original_name {u_mtm_Alu_core/data_flag[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_flag_reg[2]/Q} .original_name {u_mtm_Alu_core/data_flag[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_flag_reg[3]/NQ} .original_name {u_mtm_Alu_core/data_flag[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_core/data_flag_reg[3]/Q} .original_name {u_mtm_Alu_core/data_flag[3]/q}
set_db pin:mtm_Alu/u_mtm_Alu_core/tx_dt_ready_reg/NQ .original_name u_mtm_Alu_core/tx_dt_ready/q
set_db pin:mtm_Alu/u_mtm_Alu_core/tx_dt_ready_reg/Q .original_name u_mtm_Alu_core/tx_dt_ready/q
set_db pin:mtm_Alu/u_mtm_Alu_core/state_reg/NQ .original_name u_mtm_Alu_core/state/q
set_db pin:mtm_Alu/u_mtm_Alu_core/state_reg/Q .original_name u_mtm_Alu_core/state/q
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/OUT[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/OUT[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/OUT[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/OUT[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[4]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[4]/Q} .original_name {u_mtm_Alu_deserializer/OUT[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[5]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[5]/Q} .original_name {u_mtm_Alu_deserializer/OUT[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[6]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[6]/Q} .original_name {u_mtm_Alu_deserializer/OUT[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[7]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[7]/Q} .original_name {u_mtm_Alu_deserializer/OUT[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[8]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[8]/Q} .original_name {u_mtm_Alu_deserializer/OUT[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[9]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[9]/Q} .original_name {u_mtm_Alu_deserializer/OUT[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[10]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[10]/Q} .original_name {u_mtm_Alu_deserializer/OUT[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[11]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[11]/Q} .original_name {u_mtm_Alu_deserializer/OUT[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[12]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[12]/Q} .original_name {u_mtm_Alu_deserializer/OUT[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[13]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[13]/Q} .original_name {u_mtm_Alu_deserializer/OUT[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[14]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[14]/Q} .original_name {u_mtm_Alu_deserializer/OUT[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[15]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[15]/Q} .original_name {u_mtm_Alu_deserializer/OUT[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[16]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[16]/Q} .original_name {u_mtm_Alu_deserializer/OUT[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[17]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[17]/Q} .original_name {u_mtm_Alu_deserializer/OUT[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[18]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[18]/Q} .original_name {u_mtm_Alu_deserializer/OUT[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[19]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[19]/Q} .original_name {u_mtm_Alu_deserializer/OUT[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[20]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[20]/Q} .original_name {u_mtm_Alu_deserializer/OUT[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[21]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[21]/Q} .original_name {u_mtm_Alu_deserializer/OUT[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[22]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[22]/Q} .original_name {u_mtm_Alu_deserializer/OUT[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[23]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[23]/Q} .original_name {u_mtm_Alu_deserializer/OUT[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[24]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[24]/Q} .original_name {u_mtm_Alu_deserializer/OUT[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[25]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[25]/Q} .original_name {u_mtm_Alu_deserializer/OUT[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[26]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[26]/Q} .original_name {u_mtm_Alu_deserializer/OUT[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[27]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[27]/Q} .original_name {u_mtm_Alu_deserializer/OUT[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[28]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[28]/Q} .original_name {u_mtm_Alu_deserializer/OUT[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[29]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[29]/Q} .original_name {u_mtm_Alu_deserializer/OUT[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[30]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[30]/Q} .original_name {u_mtm_Alu_deserializer/OUT[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[31]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[31]/Q} .original_name {u_mtm_Alu_deserializer/OUT[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[32]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[32]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[32]/Q} .original_name {u_mtm_Alu_deserializer/OUT[32]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[33]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[33]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[33]/Q} .original_name {u_mtm_Alu_deserializer/OUT[33]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[34]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[34]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[34]/Q} .original_name {u_mtm_Alu_deserializer/OUT[34]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[35]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[35]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[35]/Q} .original_name {u_mtm_Alu_deserializer/OUT[35]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[36]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[36]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[36]/Q} .original_name {u_mtm_Alu_deserializer/OUT[36]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[37]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[37]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[37]/Q} .original_name {u_mtm_Alu_deserializer/OUT[37]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[38]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[38]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[38]/Q} .original_name {u_mtm_Alu_deserializer/OUT[38]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[39]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[39]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[39]/Q} .original_name {u_mtm_Alu_deserializer/OUT[39]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[40]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[40]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[40]/Q} .original_name {u_mtm_Alu_deserializer/OUT[40]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[41]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[41]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[41]/Q} .original_name {u_mtm_Alu_deserializer/OUT[41]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[42]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[42]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[42]/Q} .original_name {u_mtm_Alu_deserializer/OUT[42]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[43]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[43]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[43]/Q} .original_name {u_mtm_Alu_deserializer/OUT[43]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[44]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[44]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[44]/Q} .original_name {u_mtm_Alu_deserializer/OUT[44]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[45]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[45]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[45]/Q} .original_name {u_mtm_Alu_deserializer/OUT[45]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[46]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[46]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[46]/Q} .original_name {u_mtm_Alu_deserializer/OUT[46]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[47]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[47]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[47]/Q} .original_name {u_mtm_Alu_deserializer/OUT[47]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[48]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[48]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[48]/Q} .original_name {u_mtm_Alu_deserializer/OUT[48]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[49]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[49]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[49]/Q} .original_name {u_mtm_Alu_deserializer/OUT[49]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[50]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[50]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[50]/Q} .original_name {u_mtm_Alu_deserializer/OUT[50]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[51]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[51]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[51]/Q} .original_name {u_mtm_Alu_deserializer/OUT[51]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[52]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[52]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[52]/Q} .original_name {u_mtm_Alu_deserializer/OUT[52]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[53]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[53]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[53]/Q} .original_name {u_mtm_Alu_deserializer/OUT[53]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[54]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[54]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[54]/Q} .original_name {u_mtm_Alu_deserializer/OUT[54]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[55]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[55]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[55]/Q} .original_name {u_mtm_Alu_deserializer/OUT[55]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[56]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[56]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[56]/Q} .original_name {u_mtm_Alu_deserializer/OUT[56]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[57]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[57]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[57]/Q} .original_name {u_mtm_Alu_deserializer/OUT[57]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[58]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[58]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[58]/Q} .original_name {u_mtm_Alu_deserializer/OUT[58]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[59]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[59]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[59]/Q} .original_name {u_mtm_Alu_deserializer/OUT[59]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[60]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[60]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[60]/Q} .original_name {u_mtm_Alu_deserializer/OUT[60]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[61]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[61]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[61]/Q} .original_name {u_mtm_Alu_deserializer/OUT[61]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[62]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[62]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[62]/Q} .original_name {u_mtm_Alu_deserializer/OUT[62]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[63]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[63]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[63]/Q} .original_name {u_mtm_Alu_deserializer/OUT[63]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[64]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[64]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[64]/Q} .original_name {u_mtm_Alu_deserializer/OUT[64]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[65]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[65]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[65]/Q} .original_name {u_mtm_Alu_deserializer/OUT[65]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[66]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[66]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[66]/Q} .original_name {u_mtm_Alu_deserializer/OUT[66]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[67]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[67]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[67]/Q} .original_name {u_mtm_Alu_deserializer/OUT[67]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[68]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[68]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[68]/Q} .original_name {u_mtm_Alu_deserializer/OUT[68]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[69]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[69]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[69]/Q} .original_name {u_mtm_Alu_deserializer/OUT[69]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[70]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[70]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[70]/Q} .original_name {u_mtm_Alu_deserializer/OUT[70]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[71]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[71]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[71]/Q} .original_name {u_mtm_Alu_deserializer/OUT[71]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[72]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[72]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[72]/Q} .original_name {u_mtm_Alu_deserializer/OUT[72]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[73]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[73]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[73]/Q} .original_name {u_mtm_Alu_deserializer/OUT[73]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[74]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[74]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[74]/Q} .original_name {u_mtm_Alu_deserializer/OUT[74]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[75]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[75]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[75]/Q} .original_name {u_mtm_Alu_deserializer/OUT[75]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[76]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[76]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[76]/Q} .original_name {u_mtm_Alu_deserializer/OUT[76]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[77]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[77]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[77]/Q} .original_name {u_mtm_Alu_deserializer/OUT[77]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[78]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[78]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[78]/Q} .original_name {u_mtm_Alu_deserializer/OUT[78]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[79]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[79]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[79]/Q} .original_name {u_mtm_Alu_deserializer/OUT[79]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[80]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[80]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[80]/Q} .original_name {u_mtm_Alu_deserializer/OUT[80]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[81]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[81]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[81]/Q} .original_name {u_mtm_Alu_deserializer/OUT[81]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[82]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[82]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[82]/Q} .original_name {u_mtm_Alu_deserializer/OUT[82]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[83]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[83]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[83]/Q} .original_name {u_mtm_Alu_deserializer/OUT[83]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[84]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[84]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[84]/Q} .original_name {u_mtm_Alu_deserializer/OUT[84]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[85]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[85]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[85]/Q} .original_name {u_mtm_Alu_deserializer/OUT[85]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[86]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[86]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[86]/Q} .original_name {u_mtm_Alu_deserializer/OUT[86]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[87]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[87]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[87]/Q} .original_name {u_mtm_Alu_deserializer/OUT[87]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[88]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[88]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[88]/Q} .original_name {u_mtm_Alu_deserializer/OUT[88]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[89]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[89]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[89]/Q} .original_name {u_mtm_Alu_deserializer/OUT[89]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[90]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[90]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[90]/Q} .original_name {u_mtm_Alu_deserializer/OUT[90]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[91]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[91]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[91]/Q} .original_name {u_mtm_Alu_deserializer/OUT[91]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[92]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[92]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[92]/Q} .original_name {u_mtm_Alu_deserializer/OUT[92]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[93]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[93]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[93]/Q} .original_name {u_mtm_Alu_deserializer/OUT[93]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[94]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[94]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[94]/Q} .original_name {u_mtm_Alu_deserializer/OUT[94]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[95]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[95]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[95]/Q} .original_name {u_mtm_Alu_deserializer/OUT[95]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[96]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[96]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[96]/Q} .original_name {u_mtm_Alu_deserializer/OUT[96]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[97]/NQ} .original_name {u_mtm_Alu_deserializer/OUT[97]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/OUT_reg[97]/Q} .original_name {u_mtm_Alu_deserializer/OUT[97]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_cnt_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/bit_cnt[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_cnt_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/bit_cnt[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_cnt_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/bit_cnt[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_cnt_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/bit_cnt[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_cnt_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/bit_cnt[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_cnt_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/bit_cnt[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_cnt_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/bit_cnt[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_cnt_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/bit_cnt[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_cnt_reg[4]/NQ} .original_name {u_mtm_Alu_deserializer/bit_cnt[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_cnt_reg[4]/Q} .original_name {u_mtm_Alu_deserializer/bit_cnt[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_cnt_reg[5]/NQ} .original_name {u_mtm_Alu_deserializer/bit_cnt[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_cnt_reg[5]/Q} .original_name {u_mtm_Alu_deserializer/bit_cnt[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_cnt_reg[6]/NQ} .original_name {u_mtm_Alu_deserializer/bit_cnt[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/bit_cnt_reg[6]/Q} .original_name {u_mtm_Alu_deserializer/bit_cnt[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/data_A[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/data_A[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/data_A[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/data_A[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[4]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[4]/Q} .original_name {u_mtm_Alu_deserializer/data_A[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[5]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[5]/Q} .original_name {u_mtm_Alu_deserializer/data_A[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[6]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[6]/Q} .original_name {u_mtm_Alu_deserializer/data_A[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[7]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[7]/Q} .original_name {u_mtm_Alu_deserializer/data_A[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[8]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[8]/Q} .original_name {u_mtm_Alu_deserializer/data_A[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[9]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[9]/Q} .original_name {u_mtm_Alu_deserializer/data_A[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[10]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[10]/Q} .original_name {u_mtm_Alu_deserializer/data_A[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[11]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[11]/Q} .original_name {u_mtm_Alu_deserializer/data_A[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[12]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[12]/Q} .original_name {u_mtm_Alu_deserializer/data_A[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[13]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[13]/Q} .original_name {u_mtm_Alu_deserializer/data_A[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[14]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[14]/Q} .original_name {u_mtm_Alu_deserializer/data_A[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[15]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[15]/Q} .original_name {u_mtm_Alu_deserializer/data_A[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[16]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[16]/Q} .original_name {u_mtm_Alu_deserializer/data_A[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[17]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[17]/Q} .original_name {u_mtm_Alu_deserializer/data_A[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[18]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[18]/Q} .original_name {u_mtm_Alu_deserializer/data_A[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[19]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[19]/Q} .original_name {u_mtm_Alu_deserializer/data_A[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[20]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[20]/Q} .original_name {u_mtm_Alu_deserializer/data_A[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[21]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[21]/Q} .original_name {u_mtm_Alu_deserializer/data_A[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[22]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[22]/Q} .original_name {u_mtm_Alu_deserializer/data_A[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[23]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[23]/Q} .original_name {u_mtm_Alu_deserializer/data_A[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[24]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[24]/Q} .original_name {u_mtm_Alu_deserializer/data_A[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[25]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[25]/Q} .original_name {u_mtm_Alu_deserializer/data_A[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[26]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[26]/Q} .original_name {u_mtm_Alu_deserializer/data_A[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[27]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[27]/Q} .original_name {u_mtm_Alu_deserializer/data_A[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[28]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[28]/Q} .original_name {u_mtm_Alu_deserializer/data_A[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[29]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[29]/Q} .original_name {u_mtm_Alu_deserializer/data_A[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[30]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[30]/Q} .original_name {u_mtm_Alu_deserializer/data_A[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[31]/NQ} .original_name {u_mtm_Alu_deserializer/data_A[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_A_reg[31]/Q} .original_name {u_mtm_Alu_deserializer/data_A[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/data_B[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/data_B[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/data_B[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/data_B[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[4]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[4]/Q} .original_name {u_mtm_Alu_deserializer/data_B[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[5]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[5]/Q} .original_name {u_mtm_Alu_deserializer/data_B[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[6]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[6]/Q} .original_name {u_mtm_Alu_deserializer/data_B[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[7]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[7]/Q} .original_name {u_mtm_Alu_deserializer/data_B[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[8]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[8]/Q} .original_name {u_mtm_Alu_deserializer/data_B[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[9]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[9]/Q} .original_name {u_mtm_Alu_deserializer/data_B[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[10]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[10]/Q} .original_name {u_mtm_Alu_deserializer/data_B[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[11]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[11]/Q} .original_name {u_mtm_Alu_deserializer/data_B[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[12]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[12]/Q} .original_name {u_mtm_Alu_deserializer/data_B[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[13]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[13]/Q} .original_name {u_mtm_Alu_deserializer/data_B[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[14]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[14]/Q} .original_name {u_mtm_Alu_deserializer/data_B[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[15]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[15]/Q} .original_name {u_mtm_Alu_deserializer/data_B[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[16]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[16]/Q} .original_name {u_mtm_Alu_deserializer/data_B[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[17]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[17]/Q} .original_name {u_mtm_Alu_deserializer/data_B[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[18]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[18]/Q} .original_name {u_mtm_Alu_deserializer/data_B[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[19]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[19]/Q} .original_name {u_mtm_Alu_deserializer/data_B[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[20]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[20]/Q} .original_name {u_mtm_Alu_deserializer/data_B[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[21]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[21]/Q} .original_name {u_mtm_Alu_deserializer/data_B[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[22]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[22]/Q} .original_name {u_mtm_Alu_deserializer/data_B[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[23]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[23]/Q} .original_name {u_mtm_Alu_deserializer/data_B[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[24]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[24]/Q} .original_name {u_mtm_Alu_deserializer/data_B[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[25]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[25]/Q} .original_name {u_mtm_Alu_deserializer/data_B[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[26]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[26]/Q} .original_name {u_mtm_Alu_deserializer/data_B[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[27]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[27]/Q} .original_name {u_mtm_Alu_deserializer/data_B[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[28]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[28]/Q} .original_name {u_mtm_Alu_deserializer/data_B[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[29]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[29]/Q} .original_name {u_mtm_Alu_deserializer/data_B[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[30]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[30]/Q} .original_name {u_mtm_Alu_deserializer/data_B[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[31]/NQ} .original_name {u_mtm_Alu_deserializer/data_B[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_B_reg[31]/Q} .original_name {u_mtm_Alu_deserializer/data_B[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_OP_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/data_OP[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_OP_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/data_OP[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_OP_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/data_OP[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/data_OP_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/data_OP[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/error_flag_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/error_flag[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/error_flag_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/error_flag[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/error_flag_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/error_flag[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/error_flag_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/error_flag[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/error_flag_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/error_flag[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/error_flag_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/error_flag[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/error_flag_reg[3]/NQ} .original_name {u_mtm_Alu_deserializer/error_flag[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/error_flag_reg[3]/Q} .original_name {u_mtm_Alu_deserializer/error_flag[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/error_flag_reg[4]/NQ} .original_name {u_mtm_Alu_deserializer/error_flag[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/error_flag_reg[4]/Q} .original_name {u_mtm_Alu_deserializer/error_flag[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/error_flag_reg[5]/NQ} .original_name {u_mtm_Alu_deserializer/error_flag[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/error_flag_reg[5]/Q} .original_name {u_mtm_Alu_deserializer/error_flag[5]/q}
set_db pin:mtm_Alu/u_mtm_Alu_deserializer/error_occured_reg/NQ .original_name u_mtm_Alu_deserializer/error_occured/q
set_db pin:mtm_Alu/u_mtm_Alu_deserializer/error_occured_reg/Q .original_name u_mtm_Alu_deserializer/error_occured/q
set_db pin:mtm_Alu/u_mtm_Alu_deserializer/error_reg/NQ .original_name u_mtm_Alu_deserializer/error/q
set_db pin:mtm_Alu/u_mtm_Alu_deserializer/error_reg/Q .original_name u_mtm_Alu_deserializer/error/q
set_db pin:mtm_Alu/u_mtm_Alu_deserializer/rx_ready_reg/NQ .original_name u_mtm_Alu_deserializer/rx_ready/q
set_db pin:mtm_Alu/u_mtm_Alu_deserializer/rx_ready_reg/Q .original_name u_mtm_Alu_deserializer/rx_ready/q
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/state_reg[0]/NQ} .original_name {u_mtm_Alu_deserializer/state[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/state_reg[0]/Q} .original_name {u_mtm_Alu_deserializer/state[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/state_reg[1]/NQ} .original_name {u_mtm_Alu_deserializer/state[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/state_reg[1]/Q} .original_name {u_mtm_Alu_deserializer/state[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/state_reg[2]/NQ} .original_name {u_mtm_Alu_deserializer/state[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_deserializer/state_reg[2]/Q} .original_name {u_mtm_Alu_deserializer/state[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_cnt_reg[0]/NQ} .original_name {u_mtm_Alu_serializer/bit_cnt[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_cnt_reg[0]/Q} .original_name {u_mtm_Alu_serializer/bit_cnt[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_cnt_reg[1]/NQ} .original_name {u_mtm_Alu_serializer/bit_cnt[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_cnt_reg[1]/Q} .original_name {u_mtm_Alu_serializer/bit_cnt[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_cnt_reg[2]/NQ} .original_name {u_mtm_Alu_serializer/bit_cnt[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_cnt_reg[2]/Q} .original_name {u_mtm_Alu_serializer/bit_cnt[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_cnt_reg[3]/NQ} .original_name {u_mtm_Alu_serializer/bit_cnt[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_cnt_reg[3]/Q} .original_name {u_mtm_Alu_serializer/bit_cnt[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_cnt_reg[4]/NQ} .original_name {u_mtm_Alu_serializer/bit_cnt[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_cnt_reg[4]/Q} .original_name {u_mtm_Alu_serializer/bit_cnt[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_cnt_reg[5]/NQ} .original_name {u_mtm_Alu_serializer/bit_cnt[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/bit_cnt_reg[5]/Q} .original_name {u_mtm_Alu_serializer/bit_cnt[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/ctl_reg[0]/NQ} .original_name {u_mtm_Alu_serializer/ctl[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/ctl_reg[0]/Q} .original_name {u_mtm_Alu_serializer/ctl[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/ctl_reg[1]/NQ} .original_name {u_mtm_Alu_serializer/ctl[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/ctl_reg[1]/Q} .original_name {u_mtm_Alu_serializer/ctl[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/ctl_reg[2]/NQ} .original_name {u_mtm_Alu_serializer/ctl[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/ctl_reg[2]/Q} .original_name {u_mtm_Alu_serializer/ctl[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/ctl_reg[3]/NQ} .original_name {u_mtm_Alu_serializer/ctl[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/ctl_reg[3]/Q} .original_name {u_mtm_Alu_serializer/ctl[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/ctl_reg[4]/NQ} .original_name {u_mtm_Alu_serializer/ctl[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/ctl_reg[4]/Q} .original_name {u_mtm_Alu_serializer/ctl[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/ctl_reg[5]/NQ} .original_name {u_mtm_Alu_serializer/ctl[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/ctl_reg[5]/Q} .original_name {u_mtm_Alu_serializer/ctl[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/ctl_reg[6]/NQ} .original_name {u_mtm_Alu_serializer/ctl[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/ctl_reg[6]/Q} .original_name {u_mtm_Alu_serializer/ctl[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/ctl_reg[7]/NQ} .original_name {u_mtm_Alu_serializer/ctl[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/ctl_reg[7]/Q} .original_name {u_mtm_Alu_serializer/ctl[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/ctl_reg[8]/NQ} .original_name {u_mtm_Alu_serializer/ctl[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/ctl_reg[8]/Q} .original_name {u_mtm_Alu_serializer/ctl[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/ctl_reg[9]/NQ} .original_name {u_mtm_Alu_serializer/ctl[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/ctl_reg[9]/Q} .original_name {u_mtm_Alu_serializer/ctl[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/ctl_reg[10]/NQ} .original_name {u_mtm_Alu_serializer/ctl[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/ctl_reg[10]/Q} .original_name {u_mtm_Alu_serializer/ctl[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[0]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[0]/Q} .original_name {u_mtm_Alu_serializer/data_buf[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[1]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[1]/Q} .original_name {u_mtm_Alu_serializer/data_buf[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[2]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[2]/Q} .original_name {u_mtm_Alu_serializer/data_buf[2]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[3]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[3]/Q} .original_name {u_mtm_Alu_serializer/data_buf[3]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[4]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[4]/Q} .original_name {u_mtm_Alu_serializer/data_buf[4]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[5]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[5]/Q} .original_name {u_mtm_Alu_serializer/data_buf[5]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[6]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[6]/Q} .original_name {u_mtm_Alu_serializer/data_buf[6]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[7]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[7]/Q} .original_name {u_mtm_Alu_serializer/data_buf[7]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[8]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[8]/Q} .original_name {u_mtm_Alu_serializer/data_buf[8]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[9]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[9]/Q} .original_name {u_mtm_Alu_serializer/data_buf[9]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[10]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[10]/Q} .original_name {u_mtm_Alu_serializer/data_buf[10]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[11]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[11]/Q} .original_name {u_mtm_Alu_serializer/data_buf[11]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[12]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[12]/Q} .original_name {u_mtm_Alu_serializer/data_buf[12]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[13]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[13]/Q} .original_name {u_mtm_Alu_serializer/data_buf[13]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[14]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[14]/Q} .original_name {u_mtm_Alu_serializer/data_buf[14]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[15]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[15]/Q} .original_name {u_mtm_Alu_serializer/data_buf[15]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[16]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[16]/Q} .original_name {u_mtm_Alu_serializer/data_buf[16]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[17]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[17]/Q} .original_name {u_mtm_Alu_serializer/data_buf[17]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[18]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[18]/Q} .original_name {u_mtm_Alu_serializer/data_buf[18]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[19]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[19]/Q} .original_name {u_mtm_Alu_serializer/data_buf[19]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[20]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[20]/Q} .original_name {u_mtm_Alu_serializer/data_buf[20]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[21]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[21]/Q} .original_name {u_mtm_Alu_serializer/data_buf[21]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[22]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[22]/Q} .original_name {u_mtm_Alu_serializer/data_buf[22]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[23]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[23]/Q} .original_name {u_mtm_Alu_serializer/data_buf[23]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[24]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[24]/Q} .original_name {u_mtm_Alu_serializer/data_buf[24]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[25]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[25]/Q} .original_name {u_mtm_Alu_serializer/data_buf[25]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[26]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[26]/Q} .original_name {u_mtm_Alu_serializer/data_buf[26]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[27]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[27]/Q} .original_name {u_mtm_Alu_serializer/data_buf[27]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[28]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[28]/Q} .original_name {u_mtm_Alu_serializer/data_buf[28]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[29]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[29]/Q} .original_name {u_mtm_Alu_serializer/data_buf[29]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[30]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[30]/Q} .original_name {u_mtm_Alu_serializer/data_buf[30]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[31]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[31]/Q} .original_name {u_mtm_Alu_serializer/data_buf[31]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[32]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[32]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[32]/Q} .original_name {u_mtm_Alu_serializer/data_buf[32]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[33]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[33]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[33]/Q} .original_name {u_mtm_Alu_serializer/data_buf[33]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[34]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[34]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[34]/Q} .original_name {u_mtm_Alu_serializer/data_buf[34]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[35]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[35]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[35]/Q} .original_name {u_mtm_Alu_serializer/data_buf[35]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[36]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[36]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[36]/Q} .original_name {u_mtm_Alu_serializer/data_buf[36]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[37]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[37]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[37]/Q} .original_name {u_mtm_Alu_serializer/data_buf[37]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[38]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[38]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[38]/Q} .original_name {u_mtm_Alu_serializer/data_buf[38]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[39]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[39]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[39]/Q} .original_name {u_mtm_Alu_serializer/data_buf[39]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[40]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[40]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[40]/Q} .original_name {u_mtm_Alu_serializer/data_buf[40]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[41]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[41]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[41]/Q} .original_name {u_mtm_Alu_serializer/data_buf[41]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[42]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[42]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[42]/Q} .original_name {u_mtm_Alu_serializer/data_buf[42]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[43]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[43]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[43]/Q} .original_name {u_mtm_Alu_serializer/data_buf[43]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[44]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[44]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[44]/Q} .original_name {u_mtm_Alu_serializer/data_buf[44]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[45]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[45]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[45]/Q} .original_name {u_mtm_Alu_serializer/data_buf[45]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[46]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[46]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[46]/Q} .original_name {u_mtm_Alu_serializer/data_buf[46]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[47]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[47]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[47]/Q} .original_name {u_mtm_Alu_serializer/data_buf[47]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[48]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[48]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[48]/Q} .original_name {u_mtm_Alu_serializer/data_buf[48]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[49]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[49]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[49]/Q} .original_name {u_mtm_Alu_serializer/data_buf[49]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[50]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[50]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[50]/Q} .original_name {u_mtm_Alu_serializer/data_buf[50]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[51]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[51]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[51]/Q} .original_name {u_mtm_Alu_serializer/data_buf[51]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[52]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[52]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[52]/Q} .original_name {u_mtm_Alu_serializer/data_buf[52]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[53]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[53]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[53]/Q} .original_name {u_mtm_Alu_serializer/data_buf[53]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[54]/NQ} .original_name {u_mtm_Alu_serializer/data_buf[54]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/data_buf_reg[54]/Q} .original_name {u_mtm_Alu_serializer/data_buf[54]/q}
set_db pin:mtm_Alu/u_mtm_Alu_serializer/error_info_reg/NQ .original_name u_mtm_Alu_serializer/error_info/q
set_db pin:mtm_Alu/u_mtm_Alu_serializer/error_info_reg/Q .original_name u_mtm_Alu_serializer/error_info/q
set_db pin:mtm_Alu/u_mtm_Alu_serializer/sout_reg/NQ .original_name u_mtm_Alu_serializer/sout/q
set_db pin:mtm_Alu/u_mtm_Alu_serializer/sout_reg/Q .original_name u_mtm_Alu_serializer/sout/q
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/state_reg[0]/NQ} .original_name {u_mtm_Alu_serializer/state[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/state_reg[0]/Q} .original_name {u_mtm_Alu_serializer/state[0]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/state_reg[1]/NQ} .original_name {u_mtm_Alu_serializer/state[1]/q}
set_db {pin:mtm_Alu/u_mtm_Alu_serializer/state_reg[1]/Q} .original_name {u_mtm_Alu_serializer/state[1]/q}
eval_enc { set edi_pe::pegConsiderMacroLayersUnblocked 1 }
eval_enc { set edi_pe::pegPreRouteWireWidthBasedDensityCalModel 1 }
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
connect_global_net vddd -type pg_pin -pin_base_name vddd -verbose
connect_global_net gndd -type pg_pin -pin_base_name gndd -verbose
connect_global_net vddb -type pg_pin -pin_base_name vddb -verbose
connect_global_net gndb -type pg_pin -pin_base_name gndb -verbose
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
create_floorplan -site CoreSite -core_density_size 1 0.7 20 20 20 20
add_rings -nets {vddd gndd} -type core_rings -follow core -layer {top ME3 bottom ME3 left ME4 right ME4} -width {top 5 bottom 5 left 5 right 5} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 2 bottom 2 left 2 right 2} -center 0 -extend_corners {lt rt lb rb} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid none
add_rings -nets {vddb gndb} -type core_rings -follow core -layer {top ME3 bottom ME3 left ME4 right ME4} -width {top 2 bottom 2 left 2 right 2} -spacing {top 0.28 bottom 0.28 left 0.28 right 0.28} -offset {top 12.9 bottom 12.9 left 12.9 right 12.9} -center 0 -extend_corners {lt rt lb rb} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid none
eval_legacy { addStripe -nets gndd -layer ME5 -direction horizontal -width 5 -spacing 1.8 -number_of_sets 1 -start_from bottom -start 168.26 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit ME6 -padcore_ring_bottom_layer_limit ME1 -block_ring_top_layer_limit ME6 -block_ring_bottom_layer_limit ME1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape } }
eval_legacy { addStripe -nets vddd -layer ME5 -direction horizontal -width 5 -spacing 1.8 -number_of_sets 1 -start_from bottom -start 161.46 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit ME6 -padcore_ring_bottom_layer_limit ME1 -block_ring_top_layer_limit ME6 -block_ring_bottom_layer_limit ME1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape } }
eval_legacy { addStripe -nets gndd -layer ME4 -direction vertical -width 5 -spacing 1.8 -number_of_sets 1 -start_from left -start 176.9 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit ME6 -padcore_ring_bottom_layer_limit ME1 -block_ring_top_layer_limit ME6 -block_ring_bottom_layer_limit ME1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape } }
eval_legacy { addStripe -nets vddd -layer ME4 -direction vertical -width 5 -spacing 1.8 -number_of_sets 1 -start_from left -start 170.1 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit ME6 -padcore_ring_bottom_layer_limit ME1 -block_ring_top_layer_limit ME6 -block_ring_bottom_layer_limit ME1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape } }
route_special -connect core_pin -layer_change_range { ME1(1) ME6(6) } -block_pin_target nearest_target -core_pin_target first_after_row_end -allow_jogging 0 -crossover_via_layer_range { ME1(1) ME6(6) } -nets { vddd gndd vddb gndb } -allow_layer_change 1 -target_via_layer_range { ME1(1) ME6(6) }
edit_pin -fix_overlap 1 -side Left -layer 3 -assign 0.0 0.0 -pin clk
edit_pin -fix_overlap 1 -side Left -layer 3 -assign 0.0 0.0 -pin rst_n
edit_pin -fix_overlap 1 -side Left -layer 3 -assign 0.0 0.0 -pin sin
edit_pin -fix_overlap 1 -side Right -layer 3 -assign 0.0 0.0 -pin sout
write_io_file -by_order mtm_Alu.save.io
read_io_file mtm_Alu.save.io
set_db timing_analysis_type ocv
set_db timing_analysis_cppr both
check_timing
time_design -pre_place -report_prefix 04_preplace -report_dir ./timingReports
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
place_opt_design -report_prefix 05_place_opt -report_dir ./timingReports
set_db add_tieoffs_cells { UCL_TIEHI UCL_TIELO }
add_tieoffs
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
time_design -pre_cts -report_prefix 06_prects -report_dir ./timingReports
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
set_db cts_inverter_cells UCL_INV4
set_db cts_buffer_cells {UCL_BUF4 UCL_BUF8 UCL_BUF8_2}
set_db cts_target_max_transition_time 0.3
clock_design
report_clock_trees -summary -out_file ./timingReports/07_clock_tree_summary.txt
report_clock_tree_structure -out_file ./timingReports/07_clock_tree_structure.txt
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
opt_design -post_cts -report_prefix 08a_postCts_setup -report_dir ./timingReports
opt_design -post_cts -hold -report_prefix 08b_postCts_hold -report_dir ./timingReports
opt_design -post_cts -drv -report_prefix 08c_postCts_drv -report_dir ./timingReports
time_design -post_cts -report_prefix 08d_time_postCts_setup -report_dir ./timingReports
time_design -post_cts -hold -report_prefix 08e_time_postCts_hold -report_dir ./timingReports
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
set_db add_fillers_cells { UCL_CAP9 UCL_CAP8 UCL_CAP7 UCL_CAP6 UCL_CAP5 UCL_FILL }
set_db add_fillers_prefix FILLER
add_fillers
set_db route_design_with_via_in_pin 1:1
set_db route_design_with_via_only_for_lib_cell_pin 1:1
set_db route_design_with_timing_driven 1
set_db route_design_with_si_driven 0
set_db route_design_detail_post_route_swap_via multiCut
route_design -global_detail -via_opt -wire_opt
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
set_db extract_rc_engine post_route
set_db extract_rc_effort_level medium
set_db delaycal_enable_si true
set_db opt_post_route_drv_recovery true
set_db opt_effort high
opt_design -post_route -drv -report_prefix 10a_opt_post_route_drv -report_dir ./timingReports
opt_design -post_route -setup -hold -report_prefix 10b_opt_post_route_setup_hold -report_dir ./timingReports
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
set_db extract_rc_engine post_route
set_db extract_rc_effort_level signoff
set_db extract_rc_coupled true
set_db extract_rc_lef_tech_file_map /cad/dk/umc180/SUS/lefdef.layermap
extract_rc
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
all_clocks
set_propagated_clock [all_clocks]
set_db timing_analysis_async_checks async
set_distributed_hosts -local
set_multi_cpu_usage -local_cpu 1 -remote_host 1 -cpu_per_remote_host 1
time_design_signoff -report_dir ./timingReports -report_prefix 12_signoff_time -report_only
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
check_drc -out_file ./timingReports/14_check_drc.rpt
check_connectivity -out_file ./timingReports/14_check_connectivity.rpt
set_db design_process_node 180
set_db init_design_uniquify 1
set_db route_design_top_routing_layer 3
report_qor -format html -file ./timingReports/15_qor.html
report_area -out_file ./timingReports/15_area.rpt
write_db ./RESULTS_PR/mtm_Alu_innovus
write_sdf \
    -edges noedge \
    -max_view WC_av \
    -min_view BC_av \
    $resultDir/${DESIGN}.sdf.gz
write_netlist ./RESULTS_PR/mtm_Alu.noPower.v.gz
set_db write_stream_label_all_pin_shape true
set_db write_stream_check_map_file true
write_stream ./RESULTS_PR/mtm_Alu.gds.gz -map_file /cad/dk/umc180/SUS/UMC_18_CMOS.layermap
write_db mtm_Alu
write_db mtm_Alu
write_db mtm_Alu
write_db mtm_Alu
