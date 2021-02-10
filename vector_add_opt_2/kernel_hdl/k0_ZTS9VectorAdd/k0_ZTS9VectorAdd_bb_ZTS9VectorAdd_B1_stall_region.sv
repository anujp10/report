// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 20.3 (Release Build #158)
// 
// Legal Notice: Copyright 2020 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from k0_ZTS9VectorAdd_bb_ZTS9VectorAdd_B1_stall_region
// SystemVerilog created on Tue Feb  9 22:08:51 2021


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTS9VectorAdd_bb_ZTS9VectorAdd_B1_stall_region (
    input wire [511:0] in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_readdata,
    input wire [0:0] in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writeack,
    input wire [0:0] in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_waitrequest,
    input wire [0:0] in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_arg0,
    input wire [63:0] in_arg4,
    input wire [63:0] in_arg8,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [511:0] in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_readdata,
    input wire [0:0] in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writeack,
    input wire [0:0] in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_waitrequest,
    input wire [0:0] in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_readdatavalid,
    output wire [32:0] out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_address,
    output wire [0:0] out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_enable,
    output wire [0:0] out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_read,
    output wire [0:0] out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_write,
    output wire [511:0] out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writedata,
    output wire [63:0] out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_byteenable,
    output wire [4:0] out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_burstcount,
    output wire [0:0] out_masked,
    output wire [0:0] out_valid_out,
    input wire [511:0] in_memdep_k0_ZTS9VectorAdd_avm_readdata,
    input wire [0:0] in_memdep_k0_ZTS9VectorAdd_avm_writeack,
    input wire [0:0] in_memdep_k0_ZTS9VectorAdd_avm_waitrequest,
    input wire [0:0] in_memdep_k0_ZTS9VectorAdd_avm_readdatavalid,
    output wire [32:0] out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_address,
    output wire [0:0] out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_enable,
    output wire [0:0] out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_read,
    output wire [0:0] out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_write,
    output wire [511:0] out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writedata,
    output wire [63:0] out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_byteenable,
    output wire [4:0] out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_burstcount,
    output wire [32:0] out_memdep_k0_ZTS9VectorAdd_avm_address,
    output wire [0:0] out_memdep_k0_ZTS9VectorAdd_avm_enable,
    output wire [0:0] out_memdep_k0_ZTS9VectorAdd_avm_read,
    output wire [0:0] out_memdep_k0_ZTS9VectorAdd_avm_write,
    output wire [511:0] out_memdep_k0_ZTS9VectorAdd_avm_writedata,
    output wire [63:0] out_memdep_k0_ZTS9VectorAdd_avm_byteenable,
    output wire [4:0] out_memdep_k0_ZTS9VectorAdd_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    input wire [63:0] in_arg11_0_tpl,
    input wire [63:0] in_arg3_0_tpl,
    input wire [63:0] in_arg7_0_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [14:0] c_i15_1023855_q;
    wire [14:0] c_i15_157_q;
    wire [31:0] c_i32_053_q;
    wire [31:0] c_i32_154_q;
    wire [3:0] c_i4_748_q;
    wire [63:0] c_i64_052_q;
    wire [3:0] i_cleanups_shl_k0_zts9vectoradd3_vt_join_q;
    wire [2:0] i_cleanups_shl_k0_zts9vectoradd3_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor_k0_zts9vectoradd2_q;
    wire [15:0] i_fpga_indvars_iv_next_k0_zts9vectoradd45_a;
    wire [15:0] i_fpga_indvars_iv_next_k0_zts9vectoradd45_b;
    logic [15:0] i_fpga_indvars_iv_next_k0_zts9vectoradd45_o;
    wire [15:0] i_fpga_indvars_iv_next_k0_zts9vectoradd45_q;
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_lsu_memdep_o_active;
    wire [32:0] i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_memdep_k0_ZTS9VectorAdd_avm_address;
    wire [4:0] i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_memdep_k0_ZTS9VectorAdd_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_memdep_k0_ZTS9VectorAdd_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_memdep_k0_ZTS9VectorAdd_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_memdep_k0_ZTS9VectorAdd_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_memdep_k0_ZTS9VectorAdd_avm_write;
    wire [511:0] i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_memdep_k0_ZTS9VectorAdd_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_o_valid;
    wire [32:0] i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_address;
    wire [4:0] i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_o_valid;
    wire [32:0] i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_address;
    wire [4:0] i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_burstcount;
    wire [63:0] i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_write;
    wire [511:0] i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_out_valid_out;
    wire [14:0] i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_out_feedback_stall_out_3;
    wire [0:0] i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_out_feedback_stall_out_6;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_out_feedback_stall_out_5;
    wire [0:0] i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_feedback_stall_out_8;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_out_feedback_stall_out_7;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_out_valid_out;
    wire [63:0] i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_out_feedback_stall_out_4;
    wire [0:0] i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_out_valid_out;
    wire [15:0] i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_k0_zts9vectoradd9_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_k0_zts9vectoradd9_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_k0_zts9vectoradd9_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_k0_zts9vectoradd9_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push6_k0_zts9vectoradd31_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push6_k0_zts9vectoradd31_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push6_k0_zts9vectoradd31_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push6_k0_zts9vectoradd31_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_out_feedback_valid_out_5;
    wire [0:0] i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push8_k0_zts9vectoradd44_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push8_k0_zts9vectoradd44_out_feedback_valid_out_8;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push8_k0_zts9vectoradd44_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push8_k0_zts9vectoradd44_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push7_k0_zts9vectoradd7_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push7_k0_zts9vectoradd7_out_feedback_valid_out_7;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push7_k0_zts9vectoradd7_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push7_k0_zts9vectoradd7_out_valid_out;
    wire [63:0] i_llvm_fpga_push_i64_push4_k0_zts9vectoradd36_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i64_push4_k0_zts9vectoradd36_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i64_push4_k0_zts9vectoradd36_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i64_push4_k0_zts9vectoradd36_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_out_valid_out;
    wire [9:0] i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_vt_const_9_q;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12_vt_select_63_b;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20_out_buffer_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20_vt_join_q;
    wire [53:0] i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20_vt_select_63_b;
    wire [0:0] i_masked_k0_zts9vectoradd47_q;
    wire [0:0] i_next_cleanups_k0_zts9vectoradd43_s;
    reg [3:0] i_next_cleanups_k0_zts9vectoradd43_q;
    wire [3:0] i_next_initerations_k0_zts9vectoradd6_vt_join_q;
    wire [2:0] i_next_initerations_k0_zts9vectoradd6_vt_select_2_b;
    wire [0:0] i_notcmp_k0_zts9vectoradd40_q;
    wire [0:0] i_or_k0_zts9vectoradd42_q;
    wire [1:0] i_unnamed_k0_zts9vectoradd13_vt_const_1_q;
    wire [63:0] i_unnamed_k0_zts9vectoradd13_vt_join_q;
    wire [61:0] i_unnamed_k0_zts9vectoradd13_vt_select_63_b;
    wire [63:0] i_unnamed_k0_zts9vectoradd15_vt_join_q;
    wire [61:0] i_unnamed_k0_zts9vectoradd15_vt_select_63_b;
    wire [63:0] i_unnamed_k0_zts9vectoradd21_vt_join_q;
    wire [61:0] i_unnamed_k0_zts9vectoradd21_vt_select_63_b;
    wire [63:0] i_unnamed_k0_zts9vectoradd22_vt_join_q;
    wire [61:0] i_unnamed_k0_zts9vectoradd22_vt_select_63_b;
    wire [32:0] i_unnamed_k0_zts9vectoradd24_a;
    wire [32:0] i_unnamed_k0_zts9vectoradd24_b;
    logic [32:0] i_unnamed_k0_zts9vectoradd24_o;
    wire [32:0] i_unnamed_k0_zts9vectoradd24_q;
    wire [63:0] i_unnamed_k0_zts9vectoradd28_vt_join_q;
    wire [61:0] i_unnamed_k0_zts9vectoradd28_vt_select_63_b;
    wire [63:0] i_unnamed_k0_zts9vectoradd29_vt_join_q;
    wire [61:0] i_unnamed_k0_zts9vectoradd29_vt_select_63_b;
    wire [32:0] i_unnamed_k0_zts9vectoradd33_a;
    wire [32:0] i_unnamed_k0_zts9vectoradd33_b;
    logic [32:0] i_unnamed_k0_zts9vectoradd33_o;
    wire [32:0] i_unnamed_k0_zts9vectoradd33_q;
    wire [63:0] i_unnamed_k0_zts9vectoradd35_vt_join_q;
    wire [31:0] i_unnamed_k0_zts9vectoradd35_vt_select_31_b;
    wire [0:0] ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [14:0] bgTrunc_i_fpga_indvars_iv_next_k0_zts9vectoradd45_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_k0_zts9vectoradd24_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_k0_zts9vectoradd33_sel_x_b;
    wire [0:0] i_first_cleanup_k0_zts9vectoradd1_sel_x_b;
    wire [0:0] i_last_initeration_k0_zts9vectoradd8_sel_x_b;
    wire [0:0] i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_out_buffer_out_0_tpl;
    wire [0:0] i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_out_buffer_out_0_tpl;
    wire [0:0] i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_out_buffer_out_0_tpl;
    wire [64:0] i_unnamed_k0_zts9vectoradd0_add_x_a;
    wire [64:0] i_unnamed_k0_zts9vectoradd0_add_x_b;
    logic [64:0] i_unnamed_k0_zts9vectoradd0_add_x_o;
    wire [64:0] i_unnamed_k0_zts9vectoradd0_add_x_q;
    wire [61:0] i_unnamed_k0_zts9vectoradd0_narrow_x_b;
    wire [63:0] i_unnamed_k0_zts9vectoradd0_shift_join_x_q;
    wire [63:0] i_unnamed_k0_zts9vectoradd0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_unnamed_k0_zts9vectoradd35_sel_x_b;
    wire [64:0] dupName_0_i_unnamed_k0_zts9vectoradd0_add_x_a;
    wire [64:0] dupName_0_i_unnamed_k0_zts9vectoradd0_add_x_b;
    logic [64:0] dupName_0_i_unnamed_k0_zts9vectoradd0_add_x_o;
    wire [64:0] dupName_0_i_unnamed_k0_zts9vectoradd0_add_x_q;
    wire [61:0] dupName_0_i_unnamed_k0_zts9vectoradd0_narrow_x_b;
    wire [63:0] dupName_0_i_unnamed_k0_zts9vectoradd0_shift_join_x_q;
    wire [63:0] dupName_0_i_unnamed_k0_zts9vectoradd0_dupName_0_trunc_sel_x_b;
    wire [64:0] dupName_1_i_unnamed_k0_zts9vectoradd0_add_x_a;
    wire [64:0] dupName_1_i_unnamed_k0_zts9vectoradd0_add_x_b;
    logic [64:0] dupName_1_i_unnamed_k0_zts9vectoradd0_add_x_o;
    wire [64:0] dupName_1_i_unnamed_k0_zts9vectoradd0_add_x_q;
    wire [61:0] dupName_1_i_unnamed_k0_zts9vectoradd0_narrow_x_b;
    wire [63:0] dupName_1_i_unnamed_k0_zts9vectoradd0_shift_join_x_q;
    wire [63:0] dupName_1_i_unnamed_k0_zts9vectoradd0_dupName_0_trunc_sel_x_b;
    wire [64:0] dupName_2_i_unnamed_k0_zts9vectoradd0_add_x_a;
    wire [64:0] dupName_2_i_unnamed_k0_zts9vectoradd0_add_x_b;
    logic [64:0] dupName_2_i_unnamed_k0_zts9vectoradd0_add_x_o;
    wire [64:0] dupName_2_i_unnamed_k0_zts9vectoradd0_add_x_q;
    wire [63:0] dupName_2_i_unnamed_k0_zts9vectoradd0_dupName_0_trunc_sel_x_b;
    wire [64:0] dupName_3_i_unnamed_k0_zts9vectoradd0_add_x_a;
    wire [64:0] dupName_3_i_unnamed_k0_zts9vectoradd0_add_x_b;
    logic [64:0] dupName_3_i_unnamed_k0_zts9vectoradd0_add_x_o;
    wire [64:0] dupName_3_i_unnamed_k0_zts9vectoradd0_add_x_q;
    wire [61:0] dupName_3_i_unnamed_k0_zts9vectoradd0_narrow_x_b;
    wire [63:0] dupName_3_i_unnamed_k0_zts9vectoradd0_shift_join_x_q;
    wire [63:0] dupName_3_i_unnamed_k0_zts9vectoradd0_dupName_0_trunc_sel_x_b;
    wire [64:0] dupName_4_i_unnamed_k0_zts9vectoradd0_add_x_a;
    wire [64:0] dupName_4_i_unnamed_k0_zts9vectoradd0_add_x_b;
    logic [64:0] dupName_4_i_unnamed_k0_zts9vectoradd0_add_x_o;
    wire [64:0] dupName_4_i_unnamed_k0_zts9vectoradd0_add_x_q;
    wire [63:0] dupName_4_i_unnamed_k0_zts9vectoradd0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_exitcond_k0_zts9vectoradd38_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid228_i_cleanups_shl_k0_zts9vectoradd0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid228_i_cleanups_shl_k0_zts9vectoradd0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid229_i_cleanups_shl_k0_zts9vectoradd0_shift_x_q;
    wire [0:0] leftShiftStage0_uid231_i_cleanups_shl_k0_zts9vectoradd0_shift_x_s;
    reg [3:0] leftShiftStage0_uid231_i_cleanups_shl_k0_zts9vectoradd0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid235_i_next_initerations_k0_zts9vectoradd0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid237_i_next_initerations_k0_zts9vectoradd0_shift_x_q;
    wire [0:0] rightShiftStage0_uid239_i_next_initerations_k0_zts9vectoradd0_shift_x_s;
    reg [3:0] rightShiftStage0_uid239_i_next_initerations_k0_zts9vectoradd0_shift_x_q;
    wire [0:0] redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_valid_in;
    wire redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_stall_in;
    wire redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_data_in;
    wire [0:0] redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_valid_out;
    wire redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_stall_out;
    wire redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_data_out;
    wire [0:0] redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_valid_in;
    wire redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_stall_in;
    wire redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_data_in;
    wire [0:0] redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_valid_out;
    wire redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_stall_out;
    wire redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_data_out;
    wire [0:0] redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_valid_in;
    wire redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_stall_in;
    wire redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_stall_in_bitsignaltemp;
    wire [61:0] redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_data_in;
    wire [0:0] redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_valid_out;
    wire redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_stall_out;
    wire redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_stall_out_bitsignaltemp;
    wire [61:0] redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_data_out;
    wire [0:0] redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_valid_in;
    wire redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_stall_in;
    wire redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_stall_in_bitsignaltemp;
    wire [3:0] redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_data_in;
    wire [0:0] redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_valid_out;
    wire redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_stall_out;
    wire redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_stall_out_bitsignaltemp;
    wire [3:0] redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_data_out;
    wire [0:0] redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_valid_in;
    wire redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_stall_in;
    wire redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_data_in;
    wire [0:0] redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_valid_out;
    wire redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_stall_out;
    wire redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_data_out;
    wire [0:0] redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_valid_in;
    wire redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_stall_in;
    wire redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_data_in;
    wire [0:0] redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_valid_out;
    wire redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_stall_out;
    wire redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_data_out;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_b;
    wire [14:0] bubble_join_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_q;
    wire [14:0] bubble_select_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_b;
    wire [63:0] bubble_join_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_q;
    wire [63:0] bubble_select_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_ZTS9VectorAdd_B1_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_ZTS9VectorAdd_B1_merge_reg_aunroll_x_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_b;
    wire [63:0] bubble_join_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_q;
    wire [63:0] bubble_select_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_b;
    wire [0:0] bubble_join_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_q;
    wire [0:0] bubble_select_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_b;
    wire [0:0] bubble_join_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_q;
    wire [0:0] bubble_select_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_b;
    wire [61:0] bubble_join_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_q;
    wire [61:0] bubble_select_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_b;
    wire [3:0] bubble_join_redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_q;
    wire [3:0] bubble_select_redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_b;
    wire [0:0] bubble_join_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_q;
    wire [0:0] bubble_select_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_b;
    wire [0:0] bubble_join_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_q;
    wire [0:0] bubble_select_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_or2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_or3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_or4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_V3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_V4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_V5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_V2;
    wire [0:0] SE_in_i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_k0_zts9vectoradd9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_k0_zts9vectoradd9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push6_k0_zts9vectoradd31_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push6_k0_zts9vectoradd31_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_or0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_V0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_cleanups_push8_k0_zts9vectoradd44_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_cleanups_push8_k0_zts9vectoradd44_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push7_k0_zts9vectoradd7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push7_k0_zts9vectoradd7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i64_push4_k0_zts9vectoradd36_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i64_push4_k0_zts9vectoradd36_backStall;
    wire [0:0] SE_i_masked_k0_zts9vectoradd47_wireValid;
    wire [0:0] SE_i_masked_k0_zts9vectoradd47_and0;
    wire [0:0] SE_i_masked_k0_zts9vectoradd47_and1;
    wire [0:0] SE_i_masked_k0_zts9vectoradd47_and2;
    wire [0:0] SE_i_masked_k0_zts9vectoradd47_and3;
    wire [0:0] SE_i_masked_k0_zts9vectoradd47_and4;
    wire [0:0] SE_i_masked_k0_zts9vectoradd47_backStall;
    wire [0:0] SE_i_masked_k0_zts9vectoradd47_V0;
    wire [0:0] SE_i_next_initerations_k0_zts9vectoradd6_vt_join_wireValid;
    wire [0:0] SE_i_next_initerations_k0_zts9vectoradd6_vt_join_wireStall;
    wire [0:0] SE_i_next_initerations_k0_zts9vectoradd6_vt_join_StallValid;
    wire [0:0] SE_i_next_initerations_k0_zts9vectoradd6_vt_join_toReg0;
    reg [0:0] SE_i_next_initerations_k0_zts9vectoradd6_vt_join_fromReg0;
    wire [0:0] SE_i_next_initerations_k0_zts9vectoradd6_vt_join_consumed0;
    wire [0:0] SE_i_next_initerations_k0_zts9vectoradd6_vt_join_toReg1;
    reg [0:0] SE_i_next_initerations_k0_zts9vectoradd6_vt_join_fromReg1;
    wire [0:0] SE_i_next_initerations_k0_zts9vectoradd6_vt_join_consumed1;
    wire [0:0] SE_i_next_initerations_k0_zts9vectoradd6_vt_join_and0;
    wire [0:0] SE_i_next_initerations_k0_zts9vectoradd6_vt_join_or0;
    wire [0:0] SE_i_next_initerations_k0_zts9vectoradd6_vt_join_backStall;
    wire [0:0] SE_i_next_initerations_k0_zts9vectoradd6_vt_join_V0;
    wire [0:0] SE_i_next_initerations_k0_zts9vectoradd6_vt_join_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_and1;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_and2;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_and3;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_and1;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_and0;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_and1;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_and2;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_and3;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_V0;
    wire [0:0] SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_wireValid;
    wire [0:0] SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_wireStall;
    wire [0:0] SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_StallValid;
    wire [0:0] SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_toReg0;
    reg [0:0] SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_fromReg0;
    wire [0:0] SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_consumed0;
    wire [0:0] SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_toReg1;
    reg [0:0] SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_fromReg1;
    wire [0:0] SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_consumed1;
    wire [0:0] SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_or0;
    wire [0:0] SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_backStall;
    wire [0:0] SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_V0;
    wire [0:0] SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_V1;
    wire [0:0] SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_wireValid;
    wire [0:0] SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_wireStall;
    wire [0:0] SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_StallValid;
    wire [0:0] SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_toReg0;
    reg [0:0] SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_fromReg0;
    wire [0:0] SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_consumed0;
    wire [0:0] SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_toReg1;
    reg [0:0] SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_fromReg1;
    wire [0:0] SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_consumed1;
    wire [0:0] SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_toReg2;
    reg [0:0] SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_fromReg2;
    wire [0:0] SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_consumed2;
    wire [0:0] SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_toReg3;
    reg [0:0] SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_fromReg3;
    wire [0:0] SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_consumed3;
    wire [0:0] SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_or0;
    wire [0:0] SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_or1;
    wire [0:0] SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_or2;
    wire [0:0] SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_backStall;
    wire [0:0] SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_V0;
    wire [0:0] SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_V1;
    wire [0:0] SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_V2;
    wire [0:0] SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_V3;
    wire [0:0] SE_out_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_wireValid;
    wire [0:0] SE_out_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_and0;
    wire [0:0] SE_out_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_and1;
    wire [0:0] SE_out_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_and2;
    wire [0:0] SE_out_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_backStall;
    wire [0:0] SE_out_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_V0;
    wire [0:0] SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_wireValid;
    wire [0:0] SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_wireStall;
    wire [0:0] SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_StallValid;
    wire [0:0] SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_toReg0;
    reg [0:0] SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_fromReg0;
    wire [0:0] SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_consumed0;
    wire [0:0] SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_toReg1;
    reg [0:0] SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_fromReg1;
    wire [0:0] SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_consumed1;
    wire [0:0] SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_or0;
    wire [0:0] SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_backStall;
    wire [0:0] SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_V0;
    wire [0:0] SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_V1;
    wire [0:0] SE_out_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_wireValid;
    wire [0:0] SE_out_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_and0;
    wire [0:0] SE_out_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_and1;
    wire [0:0] SE_out_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_and2;
    wire [0:0] SE_out_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_backStall;
    wire [0:0] SE_out_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_V0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_wireValid;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_and0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_backStall;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_V0;
    reg [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_0;
    reg [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_1;
    reg [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_2;
    reg [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_3;
    reg [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_4;
    reg [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_5;
    wire [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_v_s_0;
    wire [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_s_tv_0;
    wire [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_s_tv_1;
    wire [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_s_tv_2;
    wire [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_s_tv_3;
    wire [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_s_tv_4;
    wire [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_s_tv_5;
    wire [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_backEN;
    wire [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_or0;
    wire [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_or1;
    wire [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_or2;
    wire [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_or3;
    wire [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_or4;
    wire [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_backStall;
    wire [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_V0;
    wire [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_V1;
    wire [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_V2;
    wire [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_V3;
    wire [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_V4;
    wire [0:0] bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_V5;


    // SE_i_next_initerations_k0_zts9vectoradd6_vt_join(STALLENABLE,390)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_k0_zts9vectoradd6_vt_join_fromReg0 <= '0;
            SE_i_next_initerations_k0_zts9vectoradd6_vt_join_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_k0_zts9vectoradd6_vt_join_fromReg0 <= SE_i_next_initerations_k0_zts9vectoradd6_vt_join_toReg0;
            // Successor 1
            SE_i_next_initerations_k0_zts9vectoradd6_vt_join_fromReg1 <= SE_i_next_initerations_k0_zts9vectoradd6_vt_join_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_k0_zts9vectoradd6_vt_join_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_k0_zts9vectoradd9_out_stall_out) & SE_i_next_initerations_k0_zts9vectoradd6_vt_join_wireValid) | SE_i_next_initerations_k0_zts9vectoradd6_vt_join_fromReg0;
    assign SE_i_next_initerations_k0_zts9vectoradd6_vt_join_consumed1 = (~ (i_llvm_fpga_push_i4_initerations_push7_k0_zts9vectoradd7_out_stall_out) & SE_i_next_initerations_k0_zts9vectoradd6_vt_join_wireValid) | SE_i_next_initerations_k0_zts9vectoradd6_vt_join_fromReg1;
    // Consuming
    assign SE_i_next_initerations_k0_zts9vectoradd6_vt_join_StallValid = SE_i_next_initerations_k0_zts9vectoradd6_vt_join_backStall & SE_i_next_initerations_k0_zts9vectoradd6_vt_join_wireValid;
    assign SE_i_next_initerations_k0_zts9vectoradd6_vt_join_toReg0 = SE_i_next_initerations_k0_zts9vectoradd6_vt_join_StallValid & SE_i_next_initerations_k0_zts9vectoradd6_vt_join_consumed0;
    assign SE_i_next_initerations_k0_zts9vectoradd6_vt_join_toReg1 = SE_i_next_initerations_k0_zts9vectoradd6_vt_join_StallValid & SE_i_next_initerations_k0_zts9vectoradd6_vt_join_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_k0_zts9vectoradd6_vt_join_or0 = SE_i_next_initerations_k0_zts9vectoradd6_vt_join_consumed0;
    assign SE_i_next_initerations_k0_zts9vectoradd6_vt_join_wireStall = ~ (SE_i_next_initerations_k0_zts9vectoradd6_vt_join_consumed1 & SE_i_next_initerations_k0_zts9vectoradd6_vt_join_or0);
    assign SE_i_next_initerations_k0_zts9vectoradd6_vt_join_backStall = SE_i_next_initerations_k0_zts9vectoradd6_vt_join_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_k0_zts9vectoradd6_vt_join_V0 = SE_i_next_initerations_k0_zts9vectoradd6_vt_join_wireValid & ~ (SE_i_next_initerations_k0_zts9vectoradd6_vt_join_fromReg0);
    assign SE_i_next_initerations_k0_zts9vectoradd6_vt_join_V1 = SE_i_next_initerations_k0_zts9vectoradd6_vt_join_wireValid & ~ (SE_i_next_initerations_k0_zts9vectoradd6_vt_join_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_k0_zts9vectoradd6_vt_join_and0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_V1;
    assign SE_i_next_initerations_k0_zts9vectoradd6_vt_join_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_V2 & SE_i_next_initerations_k0_zts9vectoradd6_vt_join_and0;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push6_k0_zts9vectoradd31(STALLENABLE,365)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push6_k0_zts9vectoradd31_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push6_k0_zts9vectoradd31_wireValid = i_llvm_fpga_push_i1_memdep_phi_push6_k0_zts9vectoradd31_out_valid_out;

    // bubble_join_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4(BITJOIN,263)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_q = i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4(BITSELECT,264)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14(BITJOIN,285)
    assign bubble_join_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_q = i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14(BITSELECT,286)
    assign bubble_select_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_b = $unsigned(bubble_join_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_q[63:0]);

    // dupName_0_i_unnamed_k0_zts9vectoradd0_narrow_x(BITSELECT,186)@2
    assign dupName_0_i_unnamed_k0_zts9vectoradd0_narrow_x_b = bubble_select_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_b[61:0];

    // i_unnamed_k0_zts9vectoradd13_vt_const_1(CONSTANT,63)
    assign i_unnamed_k0_zts9vectoradd13_vt_const_1_q = $unsigned(2'b00);

    // dupName_0_i_unnamed_k0_zts9vectoradd0_shift_join_x(BITJOIN,187)@2
    assign dupName_0_i_unnamed_k0_zts9vectoradd0_shift_join_x_q = {dupName_0_i_unnamed_k0_zts9vectoradd0_narrow_x_b, i_unnamed_k0_zts9vectoradd13_vt_const_1_q};

    // bubble_join_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x(BITJOIN,313)
    assign bubble_join_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_q = i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_out_buffer_out_0_tpl;

    // bubble_select_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x(BITSELECT,314)
    assign bubble_select_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_q[63:0]);

    // dupName_3_i_unnamed_k0_zts9vectoradd0_narrow_x(BITSELECT,204)@2
    assign dupName_3_i_unnamed_k0_zts9vectoradd0_narrow_x_b = bubble_select_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_b[61:0];

    // dupName_3_i_unnamed_k0_zts9vectoradd0_shift_join_x(BITJOIN,205)@2
    assign dupName_3_i_unnamed_k0_zts9vectoradd0_shift_join_x_q = {dupName_3_i_unnamed_k0_zts9vectoradd0_narrow_x_b, i_unnamed_k0_zts9vectoradd13_vt_const_1_q};

    // bubble_join_i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27(BITJOIN,288)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_q = i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27(BITSELECT,289)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_vt_select_63(BITSELECT,47)@2
    assign i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_vt_const_9(CONSTANT,45)
    assign i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_vt_const_9_q = $unsigned(10'b0000000000);

    // i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_vt_join(BITJOIN,46)@2
    assign i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_vt_join_q = {i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_vt_const_9_q};

    // dupName_3_i_unnamed_k0_zts9vectoradd0_add_x(ADD,202)@2
    assign dupName_3_i_unnamed_k0_zts9vectoradd0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_vt_join_q};
    assign dupName_3_i_unnamed_k0_zts9vectoradd0_add_x_b = {1'b0, dupName_3_i_unnamed_k0_zts9vectoradd0_shift_join_x_q};
    assign dupName_3_i_unnamed_k0_zts9vectoradd0_add_x_o = $unsigned(dupName_3_i_unnamed_k0_zts9vectoradd0_add_x_a) + $unsigned(dupName_3_i_unnamed_k0_zts9vectoradd0_add_x_b);
    assign dupName_3_i_unnamed_k0_zts9vectoradd0_add_x_q = dupName_3_i_unnamed_k0_zts9vectoradd0_add_x_o[64:0];

    // dupName_3_i_unnamed_k0_zts9vectoradd0_dupName_0_trunc_sel_x(BITSELECT,207)@2
    assign dupName_3_i_unnamed_k0_zts9vectoradd0_dupName_0_trunc_sel_x_b = dupName_3_i_unnamed_k0_zts9vectoradd0_add_x_q[63:0];

    // i_unnamed_k0_zts9vectoradd28_vt_select_63(BITSELECT,78)@2
    assign i_unnamed_k0_zts9vectoradd28_vt_select_63_b = dupName_3_i_unnamed_k0_zts9vectoradd0_dupName_0_trunc_sel_x_b[63:2];

    // i_unnamed_k0_zts9vectoradd28_vt_join(BITJOIN,77)@2
    assign i_unnamed_k0_zts9vectoradd28_vt_join_q = {i_unnamed_k0_zts9vectoradd28_vt_select_63_b, i_unnamed_k0_zts9vectoradd13_vt_const_1_q};

    // dupName_4_i_unnamed_k0_zts9vectoradd0_add_x(ADD,208)@2
    assign dupName_4_i_unnamed_k0_zts9vectoradd0_add_x_a = {1'b0, i_unnamed_k0_zts9vectoradd28_vt_join_q};
    assign dupName_4_i_unnamed_k0_zts9vectoradd0_add_x_b = {1'b0, dupName_0_i_unnamed_k0_zts9vectoradd0_shift_join_x_q};
    assign dupName_4_i_unnamed_k0_zts9vectoradd0_add_x_o = $unsigned(dupName_4_i_unnamed_k0_zts9vectoradd0_add_x_a) + $unsigned(dupName_4_i_unnamed_k0_zts9vectoradd0_add_x_b);
    assign dupName_4_i_unnamed_k0_zts9vectoradd0_add_x_q = dupName_4_i_unnamed_k0_zts9vectoradd0_add_x_o[64:0];

    // dupName_4_i_unnamed_k0_zts9vectoradd0_dupName_0_trunc_sel_x(BITSELECT,213)@2
    assign dupName_4_i_unnamed_k0_zts9vectoradd0_dupName_0_trunc_sel_x_b = dupName_4_i_unnamed_k0_zts9vectoradd0_add_x_q[63:0];

    // i_unnamed_k0_zts9vectoradd29_vt_select_63(BITSELECT,81)@2
    assign i_unnamed_k0_zts9vectoradd29_vt_select_63_b = dupName_4_i_unnamed_k0_zts9vectoradd0_dupName_0_trunc_sel_x_b[63:2];

    // bubble_join_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo(BITJOIN,331)
    assign bubble_join_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_q = redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_data_out;

    // bubble_select_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo(BITSELECT,332)
    assign bubble_select_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_b = $unsigned(bubble_join_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_q[0:0]);

    // SE_out_i_llvm_fpga_push_i4_cleanups_push8_k0_zts9vectoradd44(STALLENABLE,371)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_cleanups_push8_k0_zts9vectoradd44_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_cleanups_push8_k0_zts9vectoradd44_wireValid = i_llvm_fpga_push_i4_cleanups_push8_k0_zts9vectoradd44_out_valid_out;

    // leftShiftStage0Idx1Rng1_uid228_i_cleanups_shl_k0_zts9vectoradd0_shift_x(BITSELECT,227)@281
    assign leftShiftStage0Idx1Rng1_uid228_i_cleanups_shl_k0_zts9vectoradd0_shift_x_in = bubble_select_redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_b[2:0];
    assign leftShiftStage0Idx1Rng1_uid228_i_cleanups_shl_k0_zts9vectoradd0_shift_x_b = leftShiftStage0Idx1Rng1_uid228_i_cleanups_shl_k0_zts9vectoradd0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid229_i_cleanups_shl_k0_zts9vectoradd0_shift_x(BITJOIN,228)@281
    assign leftShiftStage0Idx1_uid229_i_cleanups_shl_k0_zts9vectoradd0_shift_x_q = {leftShiftStage0Idx1Rng1_uid228_i_cleanups_shl_k0_zts9vectoradd0_shift_x_b, GND_q};

    // leftShiftStage0_uid231_i_cleanups_shl_k0_zts9vectoradd0_shift_x(MUX,230)@281
    assign leftShiftStage0_uid231_i_cleanups_shl_k0_zts9vectoradd0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid231_i_cleanups_shl_k0_zts9vectoradd0_shift_x_s or bubble_select_redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_b or leftShiftStage0Idx1_uid229_i_cleanups_shl_k0_zts9vectoradd0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid231_i_cleanups_shl_k0_zts9vectoradd0_shift_x_s)
            1'b0 : leftShiftStage0_uid231_i_cleanups_shl_k0_zts9vectoradd0_shift_x_q = bubble_select_redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_b;
            1'b1 : leftShiftStage0_uid231_i_cleanups_shl_k0_zts9vectoradd0_shift_x_q = leftShiftStage0Idx1_uid229_i_cleanups_shl_k0_zts9vectoradd0_shift_x_q;
            default : leftShiftStage0_uid231_i_cleanups_shl_k0_zts9vectoradd0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_k0_zts9vectoradd3_vt_select_3(BITSELECT,20)@281
    assign i_cleanups_shl_k0_zts9vectoradd3_vt_select_3_b = leftShiftStage0_uid231_i_cleanups_shl_k0_zts9vectoradd0_shift_x_q[3:1];

    // i_cleanups_shl_k0_zts9vectoradd3_vt_join(BITJOIN,19)@281
    assign i_cleanups_shl_k0_zts9vectoradd3_vt_join_q = {i_cleanups_shl_k0_zts9vectoradd3_vt_select_3_b, GND_q};

    // bubble_join_redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo(BITJOIN,328)
    assign bubble_join_redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_q = redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_data_out;

    // bubble_select_redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo(BITSELECT,329)
    assign bubble_select_redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_b = $unsigned(bubble_join_redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_q[3:0]);

    // bubble_join_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo(BITJOIN,334)
    assign bubble_join_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_q = redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_data_out;

    // bubble_select_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo(BITSELECT,335)
    assign bubble_select_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_b = $unsigned(bubble_join_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37(BITJOIN,267)
    assign bubble_join_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_q = i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37(BITSELECT,268)
    assign bubble_select_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_b = $unsigned(bubble_join_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_q[14:0]);

    // i_exitcond_k0_zts9vectoradd38_cmp_nsign(LOGICAL,223)@281
    assign i_exitcond_k0_zts9vectoradd38_cmp_nsign_q = $unsigned(~ (bubble_select_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_b[14:14]));

    // i_notcmp_k0_zts9vectoradd40(LOGICAL,61)@281
    assign i_notcmp_k0_zts9vectoradd40_q = i_exitcond_k0_zts9vectoradd38_cmp_nsign_q ^ VCC_q;

    // i_or_k0_zts9vectoradd42(LOGICAL,62)@281
    assign i_or_k0_zts9vectoradd42_q = i_notcmp_k0_zts9vectoradd40_q | bubble_select_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_b;

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_next_cleanups_k0_zts9vectoradd43(MUX,57)@281
    assign i_next_cleanups_k0_zts9vectoradd43_s = i_or_k0_zts9vectoradd42_q;
    always @(i_next_cleanups_k0_zts9vectoradd43_s or bubble_select_redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_b or i_cleanups_shl_k0_zts9vectoradd3_vt_join_q)
    begin
        unique case (i_next_cleanups_k0_zts9vectoradd43_s)
            1'b0 : i_next_cleanups_k0_zts9vectoradd43_q = bubble_select_redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_b;
            1'b1 : i_next_cleanups_k0_zts9vectoradd43_q = i_cleanups_shl_k0_zts9vectoradd3_vt_join_q;
            default : i_next_cleanups_k0_zts9vectoradd43_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push8_k0_zts9vectoradd44(BLACKBOX,41)@281
    // in in_stall_in@20000000
    // out out_data_out@282
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    // out out_stall_out@20000000
    // out out_valid_out@282
    k0_ZTS9VectorAdd_i_llvm_fpga_push_i4_cle0000h8_k0_zts9vectoradd0 thei_llvm_fpga_push_i4_cleanups_push8_k0_zts9vectoradd44 (
        .in_data_in(i_next_cleanups_k0_zts9vectoradd43_q),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_feedback_stall_out_8),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_cleanups_push8_k0_zts9vectoradd44_backStall),
        .in_valid_in(SE_out_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_V0),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i4_cleanups_push8_k0_zts9vectoradd44_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i4_cleanups_push8_k0_zts9vectoradd44_out_feedback_valid_out_8),
        .out_stall_out(i_llvm_fpga_push_i4_cleanups_push8_k0_zts9vectoradd44_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_cleanups_push8_k0_zts9vectoradd44_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0(BITJOIN,278)
    assign bubble_join_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_q = i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0(BITSELECT,279)
    assign bubble_select_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_q[3:0]);

    // i_first_cleanup_k0_zts9vectoradd1_sel_x(BITSELECT,165)@2
    assign i_first_cleanup_k0_zts9vectoradd1_sel_x_b = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_b[0:0];

    // redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo(STALLFIFO,246)
    assign redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_valid_in = SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_V3;
    assign redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_stall_in = SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_backStall;
    assign redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_data_in = i_first_cleanup_k0_zts9vectoradd1_sel_x_b;
    assign redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_valid_in_bitsignaltemp = redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_valid_in[0];
    assign redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_stall_in_bitsignaltemp = redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_stall_in[0];
    assign redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_valid_out[0] = redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_valid_out_bitsignaltemp;
    assign redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_stall_out[0] = redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(280),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo (
        .valid_in(redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_k0_zts9vectoradd1_sel_x_b),
        .valid_out(redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0(STALLENABLE,355)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg2 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg3 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg4 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_consumed0 = (~ (redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_consumed1 = (~ (SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_consumed2 = (~ (SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_consumed3 = (~ (redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_consumed4 = (~ (redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_StallValid = SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_backStall & SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_toReg0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_toReg1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_consumed1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_toReg2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_consumed2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_toReg3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_consumed3;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_toReg4 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_or0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_or1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_consumed1 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_or0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_or2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_consumed2 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_or1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_or3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_consumed3 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_or2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_consumed4 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_or3);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_backStall = SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_V0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_V1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_V2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_V3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_V4 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_wireValid = i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_valid_out;

    // redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo(STALLFIFO,249)
    assign redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_valid_in = SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_V0;
    assign redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_stall_in = SE_out_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_backStall;
    assign redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_data_in = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_b;
    assign redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_valid_in_bitsignaltemp = redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_valid_in[0];
    assign redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_stall_in_bitsignaltemp = redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_stall_in[0];
    assign redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_valid_out[0] = redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_valid_out_bitsignaltemp;
    assign redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_stall_out[0] = redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(280),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(4),
        .IMPL("ram")
    ) theredist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo (
        .valid_in(redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_valid_in_bitsignaltemp),
        .stall_in(redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_b),
        .valid_out(redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_valid_out_bitsignaltemp),
        .stall_out(redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_stall_out_bitsignaltemp),
        .data_out(redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo(STALLENABLE,464)
    // Valid signal propagation
    assign SE_out_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_V0 = SE_out_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_backStall = i_llvm_fpga_push_i4_cleanups_push8_k0_zts9vectoradd44_out_stall_out | ~ (SE_out_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_and0 = redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_valid_out;
    assign SE_out_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_and1 = SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_V2 & SE_out_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_and0;
    assign SE_out_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_and2 = redist3_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out_279_fifo_valid_out & SE_out_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_and1;
    assign SE_out_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_V5 & SE_out_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_and2;

    // redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo(STALLFIFO,251)
    assign redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_valid_in = SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_V1;
    assign redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_stall_in = SE_out_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_backStall;
    assign redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_data_in = bubble_select_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_b;
    assign redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_valid_in_bitsignaltemp = redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_valid_in[0];
    assign redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_stall_in_bitsignaltemp = redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_stall_in[0];
    assign redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_valid_out[0] = redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_valid_out_bitsignaltemp;
    assign redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_stall_out[0] = redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(57),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo (
        .valid_in(redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_valid_in_bitsignaltemp),
        .stall_in(redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_b),
        .valid_out(redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_valid_out_bitsignaltemp),
        .stall_out(redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_stall_out_bitsignaltemp),
        .data_out(redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_xor_k0_zts9vectoradd2(LOGICAL,23)@2
    assign i_first_cleanup_xor_k0_zts9vectoradd2_q = i_first_cleanup_k0_zts9vectoradd1_sel_x_b ^ VCC_q;

    // redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo(STALLFIFO,250)
    assign redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_valid_in = SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_V4;
    assign redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_stall_in = SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_backStall;
    assign redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_data_in = i_first_cleanup_xor_k0_zts9vectoradd2_q;
    assign redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_valid_in_bitsignaltemp = redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_valid_in[0];
    assign redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_stall_in_bitsignaltemp = redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_stall_in[0];
    assign redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_valid_out[0] = redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_valid_out_bitsignaltemp;
    assign redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_stall_out[0] = redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(224),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo (
        .valid_in(redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_valid_in_bitsignaltemp),
        .stall_in(redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_xor_k0_zts9vectoradd2_q),
        .valid_out(redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_valid_out_bitsignaltemp),
        .stall_out(redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_stall_out_bitsignaltemp),
        .data_out(redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo(STALLENABLE,462)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_fromReg0 <= '0;
            SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_fromReg0 <= SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_toReg0;
            // Successor 1
            SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_fromReg1 <= SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_consumed0 = (~ (SE_out_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_backStall) & SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_wireValid) | SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_fromReg0;
    assign SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_consumed1 = (~ (redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_stall_out) & SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_wireValid) | SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_fromReg1;
    // Consuming
    assign SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_StallValid = SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_backStall & SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_wireValid;
    assign SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_toReg0 = SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_StallValid & SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_consumed0;
    assign SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_toReg1 = SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_StallValid & SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_or0 = SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_consumed0;
    assign SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_wireStall = ~ (SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_consumed1 & SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_or0);
    assign SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_backStall = SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_V0 = SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_wireValid & ~ (SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_fromReg0);
    assign SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_V1 = SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_wireValid & ~ (SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_wireValid = redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_valid_out;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16(BITJOIN,271)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_q = i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16(BITSELECT,272)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_q[0:0]);

    // i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x(BLACKBOX,169)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    k0_ZTS9VectorAdd_i_llvm_fpga_sync_buffer0005er_k0_zts9vectoradd0 thei_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x (
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_backStall),
        .in_valid_in(bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_V0),
        .in_buffer_in_0_tpl(in_arg7_0_tpl),
        .out_stall_out(i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_out_valid_out),
        .out_buffer_out_0_tpl(i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_out_buffer_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x(BITJOIN,316)
    assign bubble_join_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_q = i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_out_buffer_out_0_tpl;

    // bubble_select_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x(BITSELECT,317)
    assign bubble_select_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_q[63:0]);

    // i_unnamed_k0_zts9vectoradd0_narrow_x(BITSELECT,176)@2
    assign i_unnamed_k0_zts9vectoradd0_narrow_x_b = bubble_select_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_b[61:0];

    // i_unnamed_k0_zts9vectoradd0_shift_join_x(BITJOIN,177)@2
    assign i_unnamed_k0_zts9vectoradd0_shift_join_x_q = {i_unnamed_k0_zts9vectoradd0_narrow_x_b, i_unnamed_k0_zts9vectoradd13_vt_const_1_q};

    // i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12(BLACKBOX,48)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    k0_ZTS9VectorAdd_i_llvm_fpga_sync_buffer0001er_k0_zts9vectoradd0 thei_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12 (
        .in_buffer_in(in_arg4),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_backStall),
        .in_valid_in(bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_V1),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12(BITJOIN,291)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12_q = i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12(BITSELECT,292)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12_vt_select_63(BITSELECT,51)@2
    assign i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12_vt_join(BITJOIN,50)@2
    assign i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12_vt_join_q = {i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_vt_const_9_q};

    // i_unnamed_k0_zts9vectoradd0_add_x(ADD,174)@2
    assign i_unnamed_k0_zts9vectoradd0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12_vt_join_q};
    assign i_unnamed_k0_zts9vectoradd0_add_x_b = {1'b0, i_unnamed_k0_zts9vectoradd0_shift_join_x_q};
    assign i_unnamed_k0_zts9vectoradd0_add_x_o = $unsigned(i_unnamed_k0_zts9vectoradd0_add_x_a) + $unsigned(i_unnamed_k0_zts9vectoradd0_add_x_b);
    assign i_unnamed_k0_zts9vectoradd0_add_x_q = i_unnamed_k0_zts9vectoradd0_add_x_o[64:0];

    // i_unnamed_k0_zts9vectoradd0_dupName_0_trunc_sel_x(BITSELECT,179)@2
    assign i_unnamed_k0_zts9vectoradd0_dupName_0_trunc_sel_x_b = i_unnamed_k0_zts9vectoradd0_add_x_q[63:0];

    // i_unnamed_k0_zts9vectoradd13_vt_select_63(BITSELECT,65)@2
    assign i_unnamed_k0_zts9vectoradd13_vt_select_63_b = i_unnamed_k0_zts9vectoradd0_dupName_0_trunc_sel_x_b[63:2];

    // i_unnamed_k0_zts9vectoradd13_vt_join(BITJOIN,64)@2
    assign i_unnamed_k0_zts9vectoradd13_vt_join_q = {i_unnamed_k0_zts9vectoradd13_vt_select_63_b, i_unnamed_k0_zts9vectoradd13_vt_const_1_q};

    // dupName_0_i_unnamed_k0_zts9vectoradd0_add_x(ADD,184)@2
    assign dupName_0_i_unnamed_k0_zts9vectoradd0_add_x_a = {1'b0, i_unnamed_k0_zts9vectoradd13_vt_join_q};
    assign dupName_0_i_unnamed_k0_zts9vectoradd0_add_x_b = {1'b0, dupName_0_i_unnamed_k0_zts9vectoradd0_shift_join_x_q};
    assign dupName_0_i_unnamed_k0_zts9vectoradd0_add_x_o = $unsigned(dupName_0_i_unnamed_k0_zts9vectoradd0_add_x_a) + $unsigned(dupName_0_i_unnamed_k0_zts9vectoradd0_add_x_b);
    assign dupName_0_i_unnamed_k0_zts9vectoradd0_add_x_q = dupName_0_i_unnamed_k0_zts9vectoradd0_add_x_o[64:0];

    // dupName_0_i_unnamed_k0_zts9vectoradd0_dupName_0_trunc_sel_x(BITSELECT,189)@2
    assign dupName_0_i_unnamed_k0_zts9vectoradd0_dupName_0_trunc_sel_x_b = dupName_0_i_unnamed_k0_zts9vectoradd0_add_x_q[63:0];

    // i_unnamed_k0_zts9vectoradd15_vt_select_63(BITSELECT,68)@2
    assign i_unnamed_k0_zts9vectoradd15_vt_select_63_b = dupName_0_i_unnamed_k0_zts9vectoradd0_dupName_0_trunc_sel_x_b[63:2];

    // i_unnamed_k0_zts9vectoradd15_vt_join(BITJOIN,67)@2
    assign i_unnamed_k0_zts9vectoradd15_vt_join_q = {i_unnamed_k0_zts9vectoradd15_vt_select_63_b, i_unnamed_k0_zts9vectoradd13_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17(BLACKBOX,27)@2
    // in in_i_stall@20000000
    // out out_o_readdata@225
    // out out_o_stall@20000000
    // out out_o_valid@225
    // out out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_address@20000000
    // out out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_burstcount@20000000
    // out out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_byteenable@20000000
    // out out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_enable@20000000
    // out out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_read@20000000
    // out out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_write@20000000
    // out out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writedata@20000000
    k0_ZTS9VectorAdd_i_llvm_fpga_mem_unnamed0000d2_k0_zts9vectoradd0 thei_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17 (
        .in_flush(in_flush),
        .in_i_address(i_unnamed_k0_zts9vectoradd15_vt_join_q),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_b),
        .in_i_predicate(i_first_cleanup_xor_k0_zts9vectoradd2_q),
        .in_i_stall(SE_out_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_V0),
        .in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_readdata(in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_readdata),
        .in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_readdatavalid(in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_readdatavalid),
        .in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_waitrequest(in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_waitrequest),
        .in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writeack(in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_o_valid),
        .out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_address(i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_address),
        .out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_burstcount(i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_burstcount),
        .out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_byteenable(i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_byteenable),
        .out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_enable(i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_enable),
        .out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_read(i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_read),
        .out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_write(i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_write),
        .out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writedata(i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x(BLACKBOX,167)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    k0_ZTS9VectorAdd_i_llvm_fpga_sync_buffer0003er_k0_zts9vectoradd0 thei_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x (
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_backStall),
        .in_valid_in(bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_V2),
        .in_buffer_in_0_tpl(in_arg11_0_tpl),
        .out_stall_out(i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_out_valid_out),
        .out_buffer_out_0_tpl(i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_out_buffer_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x(BITJOIN,310)
    assign bubble_join_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_q = i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_out_buffer_out_0_tpl;

    // bubble_select_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x(BITSELECT,311)
    assign bubble_select_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_q[63:0]);

    // dupName_1_i_unnamed_k0_zts9vectoradd0_narrow_x(BITSELECT,192)@2
    assign dupName_1_i_unnamed_k0_zts9vectoradd0_narrow_x_b = bubble_select_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_b[61:0];

    // dupName_1_i_unnamed_k0_zts9vectoradd0_shift_join_x(BITJOIN,193)@2
    assign dupName_1_i_unnamed_k0_zts9vectoradd0_shift_join_x_q = {dupName_1_i_unnamed_k0_zts9vectoradd0_narrow_x_b, i_unnamed_k0_zts9vectoradd13_vt_const_1_q};

    // i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20(BLACKBOX,52)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    k0_ZTS9VectorAdd_i_llvm_fpga_sync_buffer0002er_k0_zts9vectoradd0 thei_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20 (
        .in_buffer_in(in_arg8),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_backStall),
        .in_valid_in(bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_V3),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20(BITJOIN,294)
    assign bubble_join_i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20_q = i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20_out_buffer_out;

    // bubble_select_i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20(BITSELECT,295)
    assign bubble_select_i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20_b = $unsigned(bubble_join_i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20_q[63:0]);

    // i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20_vt_select_63(BITSELECT,55)@2
    assign i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20_vt_select_63_b = bubble_select_i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20_b[63:10];

    // i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20_vt_join(BITJOIN,54)@2
    assign i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20_vt_join_q = {i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20_vt_select_63_b, i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_vt_const_9_q};

    // dupName_1_i_unnamed_k0_zts9vectoradd0_add_x(ADD,190)@2
    assign dupName_1_i_unnamed_k0_zts9vectoradd0_add_x_a = {1'b0, i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20_vt_join_q};
    assign dupName_1_i_unnamed_k0_zts9vectoradd0_add_x_b = {1'b0, dupName_1_i_unnamed_k0_zts9vectoradd0_shift_join_x_q};
    assign dupName_1_i_unnamed_k0_zts9vectoradd0_add_x_o = $unsigned(dupName_1_i_unnamed_k0_zts9vectoradd0_add_x_a) + $unsigned(dupName_1_i_unnamed_k0_zts9vectoradd0_add_x_b);
    assign dupName_1_i_unnamed_k0_zts9vectoradd0_add_x_q = dupName_1_i_unnamed_k0_zts9vectoradd0_add_x_o[64:0];

    // dupName_1_i_unnamed_k0_zts9vectoradd0_dupName_0_trunc_sel_x(BITSELECT,195)@2
    assign dupName_1_i_unnamed_k0_zts9vectoradd0_dupName_0_trunc_sel_x_b = dupName_1_i_unnamed_k0_zts9vectoradd0_add_x_q[63:0];

    // i_unnamed_k0_zts9vectoradd21_vt_select_63(BITSELECT,71)@2
    assign i_unnamed_k0_zts9vectoradd21_vt_select_63_b = dupName_1_i_unnamed_k0_zts9vectoradd0_dupName_0_trunc_sel_x_b[63:2];

    // i_unnamed_k0_zts9vectoradd21_vt_join(BITJOIN,70)@2
    assign i_unnamed_k0_zts9vectoradd21_vt_join_q = {i_unnamed_k0_zts9vectoradd21_vt_select_63_b, i_unnamed_k0_zts9vectoradd13_vt_const_1_q};

    // dupName_2_i_unnamed_k0_zts9vectoradd0_add_x(ADD,196)@2
    assign dupName_2_i_unnamed_k0_zts9vectoradd0_add_x_a = {1'b0, i_unnamed_k0_zts9vectoradd21_vt_join_q};
    assign dupName_2_i_unnamed_k0_zts9vectoradd0_add_x_b = {1'b0, dupName_0_i_unnamed_k0_zts9vectoradd0_shift_join_x_q};
    assign dupName_2_i_unnamed_k0_zts9vectoradd0_add_x_o = $unsigned(dupName_2_i_unnamed_k0_zts9vectoradd0_add_x_a) + $unsigned(dupName_2_i_unnamed_k0_zts9vectoradd0_add_x_b);
    assign dupName_2_i_unnamed_k0_zts9vectoradd0_add_x_q = dupName_2_i_unnamed_k0_zts9vectoradd0_add_x_o[64:0];

    // dupName_2_i_unnamed_k0_zts9vectoradd0_dupName_0_trunc_sel_x(BITSELECT,201)@2
    assign dupName_2_i_unnamed_k0_zts9vectoradd0_dupName_0_trunc_sel_x_b = dupName_2_i_unnamed_k0_zts9vectoradd0_add_x_q[63:0];

    // i_unnamed_k0_zts9vectoradd22_vt_select_63(BITSELECT,74)@2
    assign i_unnamed_k0_zts9vectoradd22_vt_select_63_b = dupName_2_i_unnamed_k0_zts9vectoradd0_dupName_0_trunc_sel_x_b[63:2];

    // i_unnamed_k0_zts9vectoradd22_vt_join(BITJOIN,73)@2
    assign i_unnamed_k0_zts9vectoradd22_vt_join_q = {i_unnamed_k0_zts9vectoradd22_vt_select_63_b, i_unnamed_k0_zts9vectoradd13_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23(BLACKBOX,28)@2
    // in in_i_stall@20000000
    // out out_o_readdata@225
    // out out_o_stall@20000000
    // out out_o_valid@225
    // out out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_address@20000000
    // out out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_burstcount@20000000
    // out out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_byteenable@20000000
    // out out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_enable@20000000
    // out out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_read@20000000
    // out out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_write@20000000
    // out out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writedata@20000000
    k0_ZTS9VectorAdd_i_llvm_fpga_mem_unnamed0000d5_k0_zts9vectoradd0 thei_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23 (
        .in_flush(in_flush),
        .in_i_address(i_unnamed_k0_zts9vectoradd22_vt_join_q),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_b),
        .in_i_predicate(i_first_cleanup_xor_k0_zts9vectoradd2_q),
        .in_i_stall(SE_out_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_V0),
        .in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_readdata(in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_readdata),
        .in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_readdatavalid(in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_readdatavalid),
        .in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_waitrequest(in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_waitrequest),
        .in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writeack(in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_o_valid),
        .out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_address(i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_address),
        .out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_burstcount(i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_burstcount),
        .out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_byteenable(i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_byteenable),
        .out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_enable(i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_enable),
        .out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_read(i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_read),
        .out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_write(i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_write),
        .out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writedata(i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo(STALLENABLE,458)
    // Valid signal propagation
    assign SE_out_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_V0 = SE_out_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_backStall = i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_o_stall | ~ (SE_out_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_and0 = redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_valid_out;
    assign SE_out_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_and1 = i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_o_valid & SE_out_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_and0;
    assign SE_out_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_and2 = i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_o_valid & SE_out_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_and1;
    assign SE_out_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_wireValid = SE_out_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_V0 & SE_out_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_and2;

    // redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo(STALLFIFO,248)
    assign redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_valid_in = SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_V0;
    assign redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_stall_in = SE_out_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_backStall;
    assign redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_data_in = i_unnamed_k0_zts9vectoradd29_vt_select_63_b;
    assign redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_valid_in_bitsignaltemp = redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_valid_in[0];
    assign redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_stall_in_bitsignaltemp = redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_stall_in[0];
    assign redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_valid_out[0] = redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_valid_out_bitsignaltemp;
    assign redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_stall_out[0] = redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(224),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(62),
        .IMPL("ram")
    ) theredist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo (
        .valid_in(redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_valid_in_bitsignaltemp),
        .stall_in(redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_stall_in_bitsignaltemp),
        .data_in(i_unnamed_k0_zts9vectoradd29_vt_select_63_b),
        .valid_out(redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_valid_out_bitsignaltemp),
        .stall_out(redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_stall_out_bitsignaltemp),
        .data_out(redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27(BLACKBOX,44)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    k0_ZTS9VectorAdd_i_llvm_fpga_sync_buffer0000er_k0_zts9vectoradd0 thei_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27 (
        .in_buffer_in(in_arg0),
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_backStall),
        .in_valid_in(bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_V5),
        .out_buffer_out(i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_out_buffer_out),
        .out_stall_out(i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x(BLACKBOX,168)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    k0_ZTS9VectorAdd_i_llvm_fpga_sync_buffer0004er_k0_zts9vectoradd0 thei_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x (
        .in_i_dependence(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_backStall),
        .in_valid_in(bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_V4),
        .in_buffer_in_0_tpl(in_arg3_0_tpl),
        .out_stall_out(i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_out_valid_out),
        .out_buffer_out_0_tpl(i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_out_buffer_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x(STALLENABLE,422)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_V0 = SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_backStall = redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_stall_out | ~ (SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_and0 = i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_and1 = i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_out_valid_out & SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_and0;
    assign SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_wireValid = SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_V2 & SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_and1;

    // SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x(STALLENABLE,420)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_V0 = SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_backStall = i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_o_stall | ~ (SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_and0 = i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_and1 = i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20_out_valid_out & SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_and0;
    assign SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_and2 = SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_V1 & SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_and1;
    assign SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_and3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_V2 & SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_and2;
    assign SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_V1 & SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_and3;

    // SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x(STALLENABLE,424)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_V0 = SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_backStall = i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_o_stall | ~ (SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_and0 = i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_out_valid_out;
    assign SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_and1 = i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12_out_valid_out & SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_and0;
    assign SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_and2 = SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_V0 & SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_and1;
    assign SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_and3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_V1 & SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_and2;
    assign SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_V0 & SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_and3;

    // SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14(STALLENABLE,359)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_fromReg0 <= SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_fromReg1 <= SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_fromReg2 <= SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_consumed0 = (~ (SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_backStall) & SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_wireValid) | SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_consumed1 = (~ (SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_backStall) & SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_wireValid) | SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_consumed2 = (~ (SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_backStall) & SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_wireValid) | SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_StallValid = SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_backStall & SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_wireValid;
    assign SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_toReg0 = SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_StallValid & SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_consumed0;
    assign SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_toReg1 = SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_StallValid & SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_consumed1;
    assign SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_toReg2 = SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_StallValid & SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_or0 = SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_consumed0;
    assign SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_or1 = SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_consumed1 & SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_or0;
    assign SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_wireStall = ~ (SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_consumed2 & SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_or1);
    assign SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_backStall = SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_V0 = SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_V1 = SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_V2 = SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_wireValid = i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_out_valid_out;

    // SE_out_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34(STALLENABLE,369)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_wireValid = i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_out_valid_out;

    // c_i32_154(CONSTANT,10)
    assign c_i32_154_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32(BITJOIN,274)
    assign bubble_join_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_q = i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32(BITSELECT,275)
    assign bubble_select_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_q[31:0]);

    // i_unnamed_k0_zts9vectoradd33(ADD,82)@281
    assign i_unnamed_k0_zts9vectoradd33_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_b};
    assign i_unnamed_k0_zts9vectoradd33_b = {1'b0, c_i32_154_q};
    assign i_unnamed_k0_zts9vectoradd33_o = $unsigned(i_unnamed_k0_zts9vectoradd33_a) + $unsigned(i_unnamed_k0_zts9vectoradd33_b);
    assign i_unnamed_k0_zts9vectoradd33_q = i_unnamed_k0_zts9vectoradd33_o[32:0];

    // bgTrunc_i_unnamed_k0_zts9vectoradd33_sel_x(BITSELECT,152)@281
    assign bgTrunc_i_unnamed_k0_zts9vectoradd33_sel_x_b = i_unnamed_k0_zts9vectoradd33_q[31:0];

    // i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34(BLACKBOX,40)@281
    // in in_stall_in@20000000
    // out out_data_out@282
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    // out out_stall_out@20000000
    // out out_valid_out@282
    k0_ZTS9VectorAdd_i_llvm_fpga_push_i32_ac0000h5_k0_zts9vectoradd0 thei_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34 (
        .in_data_in(bgTrunc_i_unnamed_k0_zts9vectoradd33_sel_x_b),
        .in_feedback_stall_in_5(i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_out_feedback_stall_out_5),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_V0),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_out_feedback_valid_out_5),
        .out_stall_out(i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34(STALLENABLE,368)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_fromReg0 <= '0;
            SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_fromReg0 <= SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_fromReg1 <= SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_toReg1;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_consumed0 = (~ (i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_out_stall_out) & SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_wireValid) | SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_fromReg0;
    assign SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_consumed1 = (~ (i_llvm_fpga_push_i64_push4_k0_zts9vectoradd36_out_stall_out) & SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_wireValid) | SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_fromReg1;
    // Consuming
    assign SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_StallValid = SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_backStall & SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_wireValid;
    assign SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_toReg0 = SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_StallValid & SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_consumed0;
    assign SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_toReg1 = SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_StallValid & SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_consumed1;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_or0 = SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_consumed0;
    assign SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_wireStall = ~ (SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_consumed1 & SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_or0);
    assign SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_backStall = SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_V0 = SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_wireValid & ~ (SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_fromReg0);
    assign SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_V1 = SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_wireValid & ~ (SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_fromReg1);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_and0 = SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_V1;
    assign SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_V4 & SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_and0;

    // SE_out_i_llvm_fpga_push_i64_push4_k0_zts9vectoradd36(STALLENABLE,375)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i64_push4_k0_zts9vectoradd36_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i64_push4_k0_zts9vectoradd36_wireValid = i_llvm_fpga_push_i64_push4_k0_zts9vectoradd36_out_valid_out;

    // c_i32_053(CONSTANT,9)
    assign c_i32_053_q = $unsigned(32'b00000000000000000000000000000000);

    // i_unnamed_k0_zts9vectoradd35_sel_x(BITSELECT,180)@281
    assign i_unnamed_k0_zts9vectoradd35_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_unnamed_k0_zts9vectoradd33_sel_x_b[31:0]};

    // i_unnamed_k0_zts9vectoradd35_vt_select_31(BITSELECT,86)@281
    assign i_unnamed_k0_zts9vectoradd35_vt_select_31_b = i_unnamed_k0_zts9vectoradd35_sel_x_b[31:0];

    // i_unnamed_k0_zts9vectoradd35_vt_join(BITJOIN,85)@281
    assign i_unnamed_k0_zts9vectoradd35_vt_join_q = {c_i32_053_q, i_unnamed_k0_zts9vectoradd35_vt_select_31_b};

    // i_llvm_fpga_push_i64_push4_k0_zts9vectoradd36(BLACKBOX,43)@281
    // in in_stall_in@20000000
    // out out_data_out@282
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    // out out_stall_out@20000000
    // out out_valid_out@282
    k0_ZTS9VectorAdd_i_llvm_fpga_push_i64_push4_k0_zts9vectoradd0 thei_llvm_fpga_push_i64_push4_k0_zts9vectoradd36 (
        .in_data_in(i_unnamed_k0_zts9vectoradd35_vt_join_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_out_feedback_stall_out_4),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i64_push4_k0_zts9vectoradd36_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_V1),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i64_push4_k0_zts9vectoradd36_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i64_push4_k0_zts9vectoradd36_out_feedback_valid_out_4),
        .out_stall_out(i_llvm_fpga_push_i64_push4_k0_zts9vectoradd36_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i64_push4_k0_zts9vectoradd36_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i64_052(CONSTANT,13)
    assign c_i64_052_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14(BLACKBOX,35)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_4@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    k0_ZTS9VectorAdd_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd0 thei_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14 (
        .in_data_in(c_i64_052_q),
        .in_dir(bubble_select_ZTS9VectorAdd_B1_merge_reg_aunroll_x_b),
        .in_feedback_in_4(i_llvm_fpga_push_i64_push4_k0_zts9vectoradd36_out_feedback_out_4),
        .in_feedback_valid_in_4(i_llvm_fpga_push_i64_push4_k0_zts9vectoradd36_out_feedback_valid_out_4),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_backStall),
        .in_valid_in(SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_V3),
        .out_data_out(i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_out_data_out),
        .out_feedback_stall_out_4(i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_out_feedback_stall_out_4),
        .out_stall_out(i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0(BLACKBOX,33)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_8@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    k0_ZTS9VectorAdd_i_llvm_fpga_pop_i4_clea0000p8_k0_zts9vectoradd0 thei_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0 (
        .in_data_in(c_i4_748_q),
        .in_dir(bubble_select_ZTS9VectorAdd_B1_merge_reg_aunroll_x_b),
        .in_feedback_in_8(i_llvm_fpga_push_i4_cleanups_push8_k0_zts9vectoradd44_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i4_cleanups_push8_k0_zts9vectoradd44_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_backStall),
        .in_valid_in(SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_V2),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_feedback_stall_out_8),
        .out_stall_out(i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg(STALLENABLE,585)
    // Valid signal propagation
    assign bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_V0 = bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_0;
    assign bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_V1 = bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_1;
    assign bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_V2 = bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_2;
    assign bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_V3 = bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_3;
    assign bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_V4 = bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_4;
    assign bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_V5 = bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_5;
    // Stall signal propagation
    assign bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_s_tv_0 = i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_out_stall_out & bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_0;
    assign bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_s_tv_1 = i_llvm_fpga_sync_buffer_p1024i32_arg4_sync_buffer_k0_zts9vectoradd12_out_stall_out & bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_1;
    assign bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_s_tv_2 = i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_out_stall_out & bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_2;
    assign bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_s_tv_3 = i_llvm_fpga_sync_buffer_p1024i32_arg8_sync_buffer_k0_zts9vectoradd20_out_stall_out & bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_3;
    assign bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_s_tv_4 = i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg3_sync_buffer_k0_zts9vectoradd25_aunroll_x_out_stall_out & bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_4;
    assign bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_s_tv_5 = i_llvm_fpga_sync_buffer_p1024i32_arg0_sync_buffer_k0_zts9vectoradd27_out_stall_out & bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_5;
    // Backward Enable generation
    assign bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_or0 = bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_s_tv_0;
    assign bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_or1 = bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_s_tv_1 | bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_or0;
    assign bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_or2 = bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_s_tv_2 | bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_or1;
    assign bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_or3 = bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_s_tv_3 | bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_or2;
    assign bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_or4 = bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_s_tv_4 | bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_or3;
    assign bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_backEN = ~ (bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_s_tv_5 | bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_or4);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_v_s_0 = bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_backEN & SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_V0;
    // Backward Stall generation
    assign bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_backStall = ~ (bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_0 <= 1'b0;
            bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_1 <= 1'b0;
            bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_2 <= 1'b0;
            bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_3 <= 1'b0;
            bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_4 <= 1'b0;
            bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_5 <= 1'b0;
        end
        else
        begin
            if (bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_backEN == 1'b0)
            begin
                bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_0 <= bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_0 & bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_0 <= bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_v_s_0;
            end

            if (bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_backEN == 1'b0)
            begin
                bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_1 <= bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_1 & bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_s_tv_1;
            end
            else
            begin
                bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_1 <= bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_v_s_0;
            end

            if (bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_backEN == 1'b0)
            begin
                bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_2 <= bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_2 & bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_s_tv_2;
            end
            else
            begin
                bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_2 <= bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_v_s_0;
            end

            if (bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_backEN == 1'b0)
            begin
                bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_3 <= bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_3 & bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_s_tv_3;
            end
            else
            begin
                bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_3 <= bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_v_s_0;
            end

            if (bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_backEN == 1'b0)
            begin
                bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_4 <= bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_4 & bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_s_tv_4;
            end
            else
            begin
                bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_4 <= bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_v_s_0;
            end

            if (bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_backEN == 1'b0)
            begin
                bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_5 <= bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_5 & bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_s_tv_5;
            end
            else
            begin
                bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_R_v_5 <= bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_v_s_0;
            end

        end
    end

    // bubble_join_stall_entry(BITJOIN,297)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,298)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,410)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // ZTS9VectorAdd_B1_merge_reg_aunroll_x(BLACKBOX,149)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    k0_ZTS9VectorAdd_ZTS9VectorAdd_B1_merge_reg theZTS9VectorAdd_B1_merge_reg_aunroll_x (
        .in_stall_in(SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x(STALLENABLE,413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg0 <= SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg1 <= SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg2 <= SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg3 <= SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg4 <= SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_1_reg_backStall) & SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_wireValid) | SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg0;
    assign SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_consumed1 = (~ (i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_out_stall_out) & SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_wireValid) | SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg1;
    assign SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_pop_i4_cleanups_pop8_k0_zts9vectoradd0_out_stall_out) & SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_wireValid) | SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg2;
    assign SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_consumed3 = (~ (i_llvm_fpga_pop_i64_pop4_k0_zts9vectoradd14_out_stall_out) & SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_wireValid) | SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg3;
    assign SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_consumed4 = (~ (redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_stall_out) & SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_wireValid) | SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg4;
    // Consuming
    assign SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_StallValid = SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_backStall & SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_wireValid;
    assign SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_toReg0 = SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_StallValid & SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_consumed0;
    assign SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_toReg1 = SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_StallValid & SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_consumed1;
    assign SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_toReg2 = SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_StallValid & SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_consumed2;
    assign SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_toReg3 = SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_StallValid & SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_consumed3;
    assign SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_toReg4 = SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_StallValid & SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_consumed4;
    // Backward Stall generation
    assign SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_or0 = SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_consumed0;
    assign SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_or1 = SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_consumed1 & SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_or0;
    assign SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_or2 = SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_consumed2 & SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_or1;
    assign SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_or3 = SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_consumed3 & SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_or2;
    assign SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_wireStall = ~ (SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_consumed4 & SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_or3);
    assign SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_backStall = SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_V0 = SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_wireValid & ~ (SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg0);
    assign SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_V1 = SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_wireValid & ~ (SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg1);
    assign SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_V2 = SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_wireValid & ~ (SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg2);
    assign SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_V3 = SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_wireValid & ~ (SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg3);
    assign SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_V4 = SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_wireValid & ~ (SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_wireValid = ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16(STALLENABLE,351)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_consumed0 = (~ (SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg7_sync_buffer_k0_zts9vectoradd10_aunroll_x_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_consumed1 = (~ (SE_out_i_llvm_fpga_sync_buffer_s_class_ztsn2cl4sycl5rangeili1eee_cl_sycl_ranges_arg11_sync_buffer_k0_zts9vectoradd18_aunroll_x_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_wireValid = i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_out_valid_out;

    // bubble_join_ZTS9VectorAdd_B1_merge_reg_aunroll_x(BITJOIN,301)
    assign bubble_join_ZTS9VectorAdd_B1_merge_reg_aunroll_x_q = ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_ZTS9VectorAdd_B1_merge_reg_aunroll_x(BITSELECT,302)
    assign bubble_select_ZTS9VectorAdd_B1_merge_reg_aunroll_x_b = $unsigned(bubble_join_ZTS9VectorAdd_B1_merge_reg_aunroll_x_q[0:0]);

    // i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16(BLACKBOX,31)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_6@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    k0_ZTS9VectorAdd_i_llvm_fpga_pop_i1_memd0000p6_k0_zts9vectoradd0 thei_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_ZTS9VectorAdd_B1_merge_reg_aunroll_x_b),
        .in_feedback_in_6(i_llvm_fpga_push_i1_memdep_phi_push6_k0_zts9vectoradd31_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i1_memdep_phi_push6_k0_zts9vectoradd31_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_backStall),
        .in_valid_in(SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_out_feedback_stall_out_6),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30(BITJOIN,253)
    assign bubble_join_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_q = i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30(BITSELECT,254)
    assign bubble_select_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi_push6_k0_zts9vectoradd31(BLACKBOX,38)@281
    // in in_stall_in@20000000
    // out out_data_out@282
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    // out out_stall_out@20000000
    // out out_valid_out@282
    k0_ZTS9VectorAdd_i_llvm_fpga_push_i1_mem0000h6_k0_zts9vectoradd0 thei_llvm_fpga_push_i1_memdep_phi_push6_k0_zts9vectoradd31 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i1_memdep_phi_pop6_k0_zts9vectoradd16_out_feedback_stall_out_6),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push6_k0_zts9vectoradd31_backStall),
        .in_valid_in(SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_V0),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_memdep_phi_push6_k0_zts9vectoradd31_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_memdep_phi_push6_k0_zts9vectoradd31_out_feedback_valid_out_6),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push6_k0_zts9vectoradd31_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push6_k0_zts9vectoradd31_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30(STALLENABLE,468)
    // Valid signal propagation
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_V0 = SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_wireValid;
    // Backward Stall generation
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_backStall = i_llvm_fpga_push_i1_memdep_phi_push6_k0_zts9vectoradd31_out_stall_out | ~ (SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_wireValid);
    // Computing multiple Valid(s)
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_and0 = SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_V1;
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_V3 & SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_and0;

    // bubble_join_i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17(BITJOIN,257)
    assign bubble_join_i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_q = i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17(BITSELECT,258)
    assign bubble_select_i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23(BITJOIN,260)
    assign bubble_join_i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_q = i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23(BITSELECT,261)
    assign bubble_select_i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_q[31:0]);

    // i_unnamed_k0_zts9vectoradd24(ADD,75)@225
    assign i_unnamed_k0_zts9vectoradd24_a = {1'b0, bubble_select_i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_b};
    assign i_unnamed_k0_zts9vectoradd24_b = {1'b0, bubble_select_i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_b};
    assign i_unnamed_k0_zts9vectoradd24_o = $unsigned(i_unnamed_k0_zts9vectoradd24_a) + $unsigned(i_unnamed_k0_zts9vectoradd24_b);
    assign i_unnamed_k0_zts9vectoradd24_q = i_unnamed_k0_zts9vectoradd24_o[32:0];

    // bgTrunc_i_unnamed_k0_zts9vectoradd24_sel_x(BITSELECT,151)@225
    assign bgTrunc_i_unnamed_k0_zts9vectoradd24_sel_x_b = i_unnamed_k0_zts9vectoradd24_q[31:0];

    // bubble_join_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo(BITJOIN,325)
    assign bubble_join_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_q = redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_data_out;

    // bubble_select_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo(BITSELECT,326)
    assign bubble_select_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_b = $unsigned(bubble_join_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_q[61:0]);

    // i_unnamed_k0_zts9vectoradd29_vt_join(BITJOIN,80)@225
    assign i_unnamed_k0_zts9vectoradd29_vt_join_q = {bubble_select_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_b, i_unnamed_k0_zts9vectoradd13_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_k0_zts9vectoradd30(BLACKBOX,26)@225
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_k0_ZTS9VectorAdd_avm_address@20000000
    // out out_memdep_k0_ZTS9VectorAdd_avm_burstcount@20000000
    // out out_memdep_k0_ZTS9VectorAdd_avm_byteenable@20000000
    // out out_memdep_k0_ZTS9VectorAdd_avm_enable@20000000
    // out out_memdep_k0_ZTS9VectorAdd_avm_read@20000000
    // out out_memdep_k0_ZTS9VectorAdd_avm_write@20000000
    // out out_memdep_k0_ZTS9VectorAdd_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@281
    // out out_o_writeack@281
    k0_ZTS9VectorAdd_i_llvm_fpga_mem_memdep_k0_zts9vectoradd0 thei_llvm_fpga_mem_memdep_k0_zts9vectoradd30 (
        .in_flush(in_flush),
        .in_i_address(i_unnamed_k0_zts9vectoradd29_vt_join_q),
        .in_i_predicate(bubble_select_redist4_i_first_cleanup_xor_k0_zts9vectoradd2_q_223_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_backStall),
        .in_i_valid(SE_out_redist2_i_unnamed_k0_zts9vectoradd29_vt_select_63_b_223_fifo_V0),
        .in_i_writedata(bgTrunc_i_unnamed_k0_zts9vectoradd24_sel_x_b),
        .in_memdep_k0_ZTS9VectorAdd_avm_readdata(in_memdep_k0_ZTS9VectorAdd_avm_readdata),
        .in_memdep_k0_ZTS9VectorAdd_avm_readdatavalid(in_memdep_k0_ZTS9VectorAdd_avm_readdatavalid),
        .in_memdep_k0_ZTS9VectorAdd_avm_waitrequest(in_memdep_k0_ZTS9VectorAdd_avm_waitrequest),
        .in_memdep_k0_ZTS9VectorAdd_avm_writeack(in_memdep_k0_ZTS9VectorAdd_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_lsu_memdep_o_active),
        .out_memdep_k0_ZTS9VectorAdd_avm_address(i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_memdep_k0_ZTS9VectorAdd_avm_address),
        .out_memdep_k0_ZTS9VectorAdd_avm_burstcount(i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_memdep_k0_ZTS9VectorAdd_avm_burstcount),
        .out_memdep_k0_ZTS9VectorAdd_avm_byteenable(i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_memdep_k0_ZTS9VectorAdd_avm_byteenable),
        .out_memdep_k0_ZTS9VectorAdd_avm_enable(i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_memdep_k0_ZTS9VectorAdd_avm_enable),
        .out_memdep_k0_ZTS9VectorAdd_avm_read(i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_memdep_k0_ZTS9VectorAdd_avm_read),
        .out_memdep_k0_ZTS9VectorAdd_avm_write(i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_memdep_k0_ZTS9VectorAdd_avm_write),
        .out_memdep_k0_ZTS9VectorAdd_avm_writedata(i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_memdep_k0_ZTS9VectorAdd_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30(STALLENABLE,341)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_consumed0 = (~ (SE_i_masked_k0_zts9vectoradd47_backStall) & SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_wireValid) | SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_backStall) & SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_wireValid) | SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_StallValid = SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_backStall & SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_toReg0 = SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_StallValid & SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_toReg1 = SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_StallValid & SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_or0 = SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_consumed1 & SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_backStall = SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_V0 = SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_V1 = SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_wireValid = i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_o_valid;

    // SE_out_i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46(STALLENABLE,361)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_wireValid = i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_out_valid_out;

    // c_i15_157(CONSTANT,6)
    assign c_i15_157_q = $unsigned(15'b111111111111111);

    // i_fpga_indvars_iv_next_k0_zts9vectoradd45(ADD,24)@281
    assign i_fpga_indvars_iv_next_k0_zts9vectoradd45_a = {1'b0, bubble_select_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_b};
    assign i_fpga_indvars_iv_next_k0_zts9vectoradd45_b = {1'b0, c_i15_157_q};
    assign i_fpga_indvars_iv_next_k0_zts9vectoradd45_o = $unsigned(i_fpga_indvars_iv_next_k0_zts9vectoradd45_a) + $unsigned(i_fpga_indvars_iv_next_k0_zts9vectoradd45_b);
    assign i_fpga_indvars_iv_next_k0_zts9vectoradd45_q = i_fpga_indvars_iv_next_k0_zts9vectoradd45_o[15:0];

    // bgTrunc_i_fpga_indvars_iv_next_k0_zts9vectoradd45_sel_x(BITSELECT,150)@281
    assign bgTrunc_i_fpga_indvars_iv_next_k0_zts9vectoradd45_sel_x_b = i_fpga_indvars_iv_next_k0_zts9vectoradd45_q[14:0];

    // i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46(BLACKBOX,36)@281
    // in in_stall_in@20000000
    // out out_data_out@282
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@282
    k0_ZTS9VectorAdd_i_llvm_fpga_push_i15_fp0000h3_k0_zts9vectoradd0 thei_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_k0_zts9vectoradd45_sel_x_b),
        .in_feedback_stall_in_3(i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_out_feedback_stall_out_3),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46(STALLENABLE,360)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_V0 = SE_in_i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_backStall = i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_and0 = SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_V3;
    assign SE_in_i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_V1 & SE_in_i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_and0;

    // SE_in_i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41(STALLENABLE,366)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_backStall = i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_and0 = SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_V1;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_wireValid = SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_V0 & SE_in_i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_and0;

    // SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37(STALLENABLE,349)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_fromReg0 <= SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_fromReg1 <= SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_fromReg2 <= SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_fromReg3 <= SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_consumed0 = (~ (SE_i_masked_k0_zts9vectoradd47_backStall) & SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_wireValid) | SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_backStall) & SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_wireValid) | SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_consumed2 = (~ (SE_out_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_backStall) & SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_wireValid) | SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_consumed3 = (~ (SE_in_i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_backStall) & SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_wireValid) | SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_StallValid = SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_backStall & SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_wireValid;
    assign SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_toReg0 = SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_StallValid & SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_consumed0;
    assign SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_toReg1 = SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_StallValid & SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_consumed1;
    assign SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_toReg2 = SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_StallValid & SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_consumed2;
    assign SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_toReg3 = SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_StallValid & SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_or0 = SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_consumed0;
    assign SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_or1 = SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_consumed1 & SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_or0;
    assign SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_or2 = SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_consumed2 & SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_or1;
    assign SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_wireStall = ~ (SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_consumed3 & SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_or2);
    assign SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_backStall = SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_V0 = SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_wireValid & ~ (SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_V1 = SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_wireValid & ~ (SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_V2 = SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_wireValid & ~ (SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_V3 = SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_wireValid & ~ (SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_wireValid = i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32(STALLENABLE,353)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_consumed0 = (~ (SE_i_masked_k0_zts9vectoradd47_backStall) & SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_wireValid) | SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_consumed1 = (~ (SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_backStall) & SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_wireValid) | SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_StallValid = SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_backStall & SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_toReg0 = SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_StallValid & SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_toReg1 = SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_StallValid & SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_or0 = SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_consumed1 & SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_or0);
    assign SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_backStall = SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_V0 = SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_V1 = SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_wireValid = i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_out_valid_out;

    // SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo(STALLENABLE,454)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_fromReg0 <= '0;
            SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_fromReg0 <= SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_toReg0;
            // Successor 1
            SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_fromReg1 <= SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_backStall) & SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_wireValid) | SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_fromReg0;
    assign SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_consumed1 = (~ (SE_i_masked_k0_zts9vectoradd47_backStall) & SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_wireValid) | SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_fromReg1;
    // Consuming
    assign SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_StallValid = SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_backStall & SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_wireValid;
    assign SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_toReg0 = SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_StallValid & SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_consumed0;
    assign SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_toReg1 = SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_StallValid & SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_or0 = SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_consumed0;
    assign SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_wireStall = ~ (SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_consumed1 & SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_or0);
    assign SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_backStall = SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_V0 = SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_wireValid & ~ (SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_fromReg0);
    assign SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_V1 = SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_wireValid & ~ (SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_wireValid = redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_valid_out;

    // SE_i_masked_k0_zts9vectoradd47(STALLENABLE,388)
    // Valid signal propagation
    assign SE_i_masked_k0_zts9vectoradd47_V0 = SE_i_masked_k0_zts9vectoradd47_wireValid;
    // Backward Stall generation
    assign SE_i_masked_k0_zts9vectoradd47_backStall = in_stall_in | ~ (SE_i_masked_k0_zts9vectoradd47_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_masked_k0_zts9vectoradd47_and0 = SE_out_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_V1;
    assign SE_i_masked_k0_zts9vectoradd47_and1 = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_V0 & SE_i_masked_k0_zts9vectoradd47_and0;
    assign SE_i_masked_k0_zts9vectoradd47_and2 = SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_V0 & SE_i_masked_k0_zts9vectoradd47_and1;
    assign SE_i_masked_k0_zts9vectoradd47_and3 = SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_V0 & SE_i_masked_k0_zts9vectoradd47_and2;
    assign SE_i_masked_k0_zts9vectoradd47_and4 = SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_V0 & SE_i_masked_k0_zts9vectoradd47_and3;
    assign SE_i_masked_k0_zts9vectoradd47_wireValid = SE_out_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_V0 & SE_i_masked_k0_zts9vectoradd47_and4;

    // SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5(STALLENABLE,357)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_consumed0 = (~ (SE_i_masked_k0_zts9vectoradd47_backStall) & SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_consumed1 = (~ (SE_i_next_initerations_k0_zts9vectoradd6_vt_join_backStall) & SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_StallValid = SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_backStall & SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_toReg0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_toReg1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_or0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_consumed1 & SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_or0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_backStall = SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_V0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_V1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_wireValid = i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_llvm_fpga_push_i4_initerations_push7_k0_zts9vectoradd7(STALLENABLE,373)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_initerations_push7_k0_zts9vectoradd7_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_initerations_push7_k0_zts9vectoradd7_wireValid = i_llvm_fpga_push_i4_initerations_push7_k0_zts9vectoradd7_out_valid_out;

    // rightShiftStage0Idx1Rng1_uid235_i_next_initerations_k0_zts9vectoradd0_shift_x(BITSELECT,234)@281
    assign rightShiftStage0Idx1Rng1_uid235_i_next_initerations_k0_zts9vectoradd0_shift_x_b = bubble_select_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_b[3:1];

    // rightShiftStage0Idx1_uid237_i_next_initerations_k0_zts9vectoradd0_shift_x(BITJOIN,236)@281
    assign rightShiftStage0Idx1_uid237_i_next_initerations_k0_zts9vectoradd0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid235_i_next_initerations_k0_zts9vectoradd0_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5(BITJOIN,281)
    assign bubble_join_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_q = i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5(BITSELECT,282)
    assign bubble_select_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_q[3:0]);

    // rightShiftStage0_uid239_i_next_initerations_k0_zts9vectoradd0_shift_x(MUX,238)@281
    assign rightShiftStage0_uid239_i_next_initerations_k0_zts9vectoradd0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid239_i_next_initerations_k0_zts9vectoradd0_shift_x_s or bubble_select_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_b or rightShiftStage0Idx1_uid237_i_next_initerations_k0_zts9vectoradd0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid239_i_next_initerations_k0_zts9vectoradd0_shift_x_s)
            1'b0 : rightShiftStage0_uid239_i_next_initerations_k0_zts9vectoradd0_shift_x_q = bubble_select_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_b;
            1'b1 : rightShiftStage0_uid239_i_next_initerations_k0_zts9vectoradd0_shift_x_q = rightShiftStage0Idx1_uid237_i_next_initerations_k0_zts9vectoradd0_shift_x_q;
            default : rightShiftStage0_uid239_i_next_initerations_k0_zts9vectoradd0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_k0_zts9vectoradd6_vt_select_2(BITSELECT,60)@281
    assign i_next_initerations_k0_zts9vectoradd6_vt_select_2_b = rightShiftStage0_uid239_i_next_initerations_k0_zts9vectoradd0_shift_x_q[2:0];

    // i_next_initerations_k0_zts9vectoradd6_vt_join(BITJOIN,59)@281
    assign i_next_initerations_k0_zts9vectoradd6_vt_join_q = {GND_q, i_next_initerations_k0_zts9vectoradd6_vt_select_2_b};

    // i_llvm_fpga_push_i4_initerations_push7_k0_zts9vectoradd7(BLACKBOX,42)@281
    // in in_stall_in@20000000
    // out out_data_out@282
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    // out out_stall_out@20000000
    // out out_valid_out@282
    k0_ZTS9VectorAdd_i_llvm_fpga_push_i4_ini0000h7_k0_zts9vectoradd0 thei_llvm_fpga_push_i4_initerations_push7_k0_zts9vectoradd7 (
        .in_data_in(i_next_initerations_k0_zts9vectoradd6_vt_join_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_out_feedback_stall_out_7),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_initerations_push7_k0_zts9vectoradd7_backStall),
        .in_valid_in(SE_i_next_initerations_k0_zts9vectoradd6_vt_join_V1),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i4_initerations_push7_k0_zts9vectoradd7_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i4_initerations_push7_k0_zts9vectoradd7_out_feedback_valid_out_7),
        .out_stall_out(i_llvm_fpga_push_i4_initerations_push7_k0_zts9vectoradd7_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_initerations_push7_k0_zts9vectoradd7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_748(CONSTANT,12)
    assign c_i4_748_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5(BLACKBOX,34)@280
    // in in_stall_in@20000000
    // out out_data_out@281
    // out out_feedback_stall_out_7@20000000
    // out out_stall_out@20000000
    // out out_valid_out@281
    k0_ZTS9VectorAdd_i_llvm_fpga_pop_i4_init0000p7_k0_zts9vectoradd0 thei_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5 (
        .in_data_in(c_i4_748_q),
        .in_dir(bubble_select_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_b),
        .in_feedback_in_7(i_llvm_fpga_push_i4_initerations_push7_k0_zts9vectoradd7_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i4_initerations_push7_k0_zts9vectoradd7_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_backStall),
        .in_valid_in(SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_V3),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_out_feedback_stall_out_7),
        .out_stall_out(i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32(BLACKBOX,32)@280
    // in in_stall_in@20000000
    // out out_data_out@281
    // out out_feedback_stall_out_5@20000000
    // out out_stall_out@20000000
    // out out_valid_out@281
    k0_ZTS9VectorAdd_i_llvm_fpga_pop_i32_acl0000p5_k0_zts9vectoradd0 thei_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32 (
        .in_data_in(c_i32_053_q),
        .in_dir(bubble_select_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_b),
        .in_feedback_in_5(i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_out_feedback_out_5),
        .in_feedback_valid_in_5(i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_out_feedback_valid_out_5),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_backStall),
        .in_valid_in(SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_V2),
        .out_data_out(i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_out_data_out),
        .out_feedback_stall_out_5(i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_out_feedback_stall_out_5),
        .out_stall_out(i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i15_1023855(CONSTANT,5)
    assign c_i15_1023855_q = $unsigned(15'b010011111111110);

    // i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37(BLACKBOX,30)@280
    // in in_stall_in@20000000
    // out out_data_out@281
    // out out_feedback_stall_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@281
    k0_ZTS9VectorAdd_i_llvm_fpga_pop_i15_fpg0000p3_k0_zts9vectoradd0 thei_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37 (
        .in_data_in(c_i15_1023855_q),
        .in_dir(bubble_select_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_b),
        .in_feedback_in_3(i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_out_feedback_out_3),
        .in_feedback_valid_in_3(i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_out_feedback_valid_out_3),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_backStall),
        .in_valid_in(SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_out_data_out),
        .out_feedback_stall_out_3(i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_out_feedback_stall_out_3),
        .out_stall_out(i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo(STALLFIFO,247)
    assign redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_valid_in = SE_out_ZTS9VectorAdd_B1_merge_reg_aunroll_x_V4;
    assign redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_stall_in = SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_backStall;
    assign redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_data_in = bubble_select_ZTS9VectorAdd_B1_merge_reg_aunroll_x_b;
    assign redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_valid_in_bitsignaltemp = redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_valid_in[0];
    assign redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_stall_in_bitsignaltemp = redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_stall_in[0];
    assign redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_valid_out[0] = redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_valid_out_bitsignaltemp;
    assign redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_stall_out[0] = redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(280),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo (
        .valid_in(redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_valid_in_bitsignaltemp),
        .stall_in(redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_ZTS9VectorAdd_B1_merge_reg_aunroll_x_b),
        .valid_out(redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_valid_out_bitsignaltemp),
        .stall_out(redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_stall_out_bitsignaltemp),
        .data_out(redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo(STALLENABLE,456)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_fromReg0 <= '0;
            SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_fromReg1 <= '0;
            SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_fromReg2 <= '0;
            SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_fromReg0 <= SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_toReg0;
            // Successor 1
            SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_fromReg1 <= SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_toReg1;
            // Successor 2
            SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_fromReg2 <= SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_toReg2;
            // Successor 3
            SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_fromReg3 <= SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_consumed0 = (~ (i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_out_stall_out) & SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_wireValid) | SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_fromReg0;
    assign SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_consumed1 = (~ (i_llvm_fpga_pop_i15_fpga_indvars_iv_pop3_k0_zts9vectoradd37_out_stall_out) & SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_wireValid) | SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_fromReg1;
    assign SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_consumed2 = (~ (i_llvm_fpga_pop_i32_acl_0_i105_pop5_k0_zts9vectoradd32_out_stall_out) & SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_wireValid) | SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_fromReg2;
    assign SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_consumed3 = (~ (i_llvm_fpga_pop_i4_initerations_pop7_k0_zts9vectoradd5_out_stall_out) & SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_wireValid) | SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_fromReg3;
    // Consuming
    assign SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_StallValid = SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_backStall & SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_wireValid;
    assign SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_toReg0 = SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_StallValid & SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_consumed0;
    assign SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_toReg1 = SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_StallValid & SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_consumed1;
    assign SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_toReg2 = SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_StallValid & SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_consumed2;
    assign SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_toReg3 = SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_StallValid & SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_consumed3;
    // Backward Stall generation
    assign SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_or0 = SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_consumed0;
    assign SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_or1 = SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_consumed1 & SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_or0;
    assign SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_or2 = SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_consumed2 & SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_or1;
    assign SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_wireStall = ~ (SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_consumed3 & SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_or2);
    assign SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_backStall = SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_V0 = SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_wireValid & ~ (SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_fromReg0);
    assign SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_V1 = SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_wireValid & ~ (SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_fromReg1);
    assign SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_V2 = SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_wireValid & ~ (SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_fromReg2);
    assign SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_V3 = SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_wireValid & ~ (SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_wireValid = redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_valid_out;

    // SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4(STALLENABLE,347)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg4 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg5 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg3 <= SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg4 <= SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg5 <= SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_toReg5;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_consumed0 = (~ (SE_i_masked_k0_zts9vectoradd47_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_consumed1 = (~ (SE_in_i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_consumed2 = (~ (SE_i_next_initerations_k0_zts9vectoradd6_vt_join_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_consumed3 = (~ (SE_bubble_select_i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_consumed4 = (~ (SE_in_i_llvm_fpga_push_i32_acl_0_i105_push5_k0_zts9vectoradd34_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_consumed5 = (~ (SE_out_redist5_i_first_cleanup_xor_k0_zts9vectoradd2_q_279_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg5;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_consumed2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_toReg3 = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_consumed3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_toReg4 = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_consumed4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_toReg5 = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_consumed5;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_or2 = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_or1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_or3 = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_consumed3 & SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_or2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_or4 = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_consumed4 & SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_or3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_consumed5 & SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_or4);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_V3 = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_V4 = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg4);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_V5 = SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_fromReg5);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_wireValid = i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41(STALLENABLE,367)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_wireValid = i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_out_valid_out;

    // bubble_join_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo(BITJOIN,319)
    assign bubble_join_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_q = redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_data_out;

    // bubble_select_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo(BITSELECT,320)
    assign bubble_select_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_b = $unsigned(bubble_join_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_q[0:0]);

    // i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41(BLACKBOX,39)@281
    // in in_stall_in@20000000
    // out out_data_out@282
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@282
    k0_ZTS9VectorAdd_i_llvm_fpga_push_i1_not0000nd_k0_zts9vectoradd0 thei_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41 (
        .in_data_in(i_exitcond_k0_zts9vectoradd38_cmp_nsign_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_out_not_exitcond_stall_out),
        .in_first_cleanup(bubble_select_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_k0_zts9vectoradd9(STALLENABLE,363)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_k0_zts9vectoradd9_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_k0_zts9vectoradd9_wireValid = i_llvm_fpga_push_i1_lastiniteration_k0_zts9vectoradd9_out_valid_out;

    // i_last_initeration_k0_zts9vectoradd8_sel_x(BITSELECT,166)@281
    assign i_last_initeration_k0_zts9vectoradd8_sel_x_b = i_next_initerations_k0_zts9vectoradd6_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_k0_zts9vectoradd9(BLACKBOX,37)@281
    // in in_stall_in@20000000
    // out out_data_out@282
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@282
    k0_ZTS9VectorAdd_i_llvm_fpga_push_i1_las0000on_k0_zts9vectoradd0 thei_llvm_fpga_push_i1_lastiniteration_k0_zts9vectoradd9 (
        .in_data_in(i_last_initeration_k0_zts9vectoradd8_sel_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_out_initeration_stall_out),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_k0_zts9vectoradd9_backStall),
        .in_valid_in(SE_i_next_initerations_k0_zts9vectoradd6_vt_join_V0),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_lastiniteration_k0_zts9vectoradd9_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_lastiniteration_k0_zts9vectoradd9_out_feedback_valid_out_1),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_k0_zts9vectoradd9_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_k0_zts9vectoradd9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo(BITJOIN,322)
    assign bubble_join_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_q = redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_data_out;

    // bubble_select_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo(BITSELECT,323)
    assign bubble_select_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_b = $unsigned(bubble_join_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_q[0:0]);

    // i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4(BLACKBOX,29)@280
    // in in_stall_in@20000000
    // out out_data_out@281
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@281
    k0_ZTS9VectorAdd_i_llvm_fpga_pipeline_ke0000ng_k0_zts9vectoradd0 thei_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4 (
        .in_data_in(bubble_select_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_b),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_k0_zts9vectoradd9_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_k0_zts9vectoradd9_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_k0_zts9vectoradd41_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_backStall),
        .in_valid_in(SE_out_redist1_ZTS9VectorAdd_B1_merge_reg_aunroll_x_out_data_out_0_tpl_279_fifo_V0),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,17)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,139)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_out_pipeline_valid_out;

    // sync_out(GPOUT,147)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,155)
    assign out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_address = i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_address;
    assign out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_enable = i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_enable;
    assign out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_read = i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_read;
    assign out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_write = i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_write;
    assign out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writedata = i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writedata;
    assign out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_byteenable = i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_byteenable;
    assign out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_burstcount = i_llvm_fpga_mem_unnamed_k0_zts9vectoradd2_k0_zts9vectoradd17_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_burstcount;

    // i_masked_k0_zts9vectoradd47(LOGICAL,56)@281
    assign i_masked_k0_zts9vectoradd47_q = i_notcmp_k0_zts9vectoradd40_q & bubble_select_redist0_i_first_cleanup_k0_zts9vectoradd1_sel_x_b_279_fifo_b;

    // dupName_0_sync_out_x(GPOUT,156)@281
    assign out_masked = i_masked_k0_zts9vectoradd47_q;
    assign out_valid_out = SE_i_masked_k0_zts9vectoradd47_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,158)
    assign out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_address = i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_address;
    assign out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_enable = i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_enable;
    assign out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_read = i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_read;
    assign out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_write = i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_write;
    assign out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writedata = i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writedata;
    assign out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_byteenable = i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_byteenable;
    assign out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_burstcount = i_llvm_fpga_mem_unnamed_k0_zts9vectoradd5_k0_zts9vectoradd23_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,159)
    assign out_memdep_k0_ZTS9VectorAdd_avm_address = i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_memdep_k0_ZTS9VectorAdd_avm_address;
    assign out_memdep_k0_ZTS9VectorAdd_avm_enable = i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_memdep_k0_ZTS9VectorAdd_avm_enable;
    assign out_memdep_k0_ZTS9VectorAdd_avm_read = i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_memdep_k0_ZTS9VectorAdd_avm_read;
    assign out_memdep_k0_ZTS9VectorAdd_avm_write = i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_memdep_k0_ZTS9VectorAdd_avm_write;
    assign out_memdep_k0_ZTS9VectorAdd_avm_writedata = i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_memdep_k0_ZTS9VectorAdd_avm_writedata;
    assign out_memdep_k0_ZTS9VectorAdd_avm_byteenable = i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_memdep_k0_ZTS9VectorAdd_avm_byteenable;
    assign out_memdep_k0_ZTS9VectorAdd_avm_burstcount = i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_memdep_k0_ZTS9VectorAdd_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,160)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_k0_zts9vectoradd30_out_lsu_memdep_o_active;

endmodule
