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

// SystemVerilog created from k0_ZTS9VectorAdd_function
// SystemVerilog created on Tue Feb  9 22:08:51 2021


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTS9VectorAdd_function (
    output wire [32:0] out_memdep_k0_ZTS9VectorAdd_avm_address,
    output wire [4:0] out_memdep_k0_ZTS9VectorAdd_avm_burstcount,
    output wire [63:0] out_memdep_k0_ZTS9VectorAdd_avm_byteenable,
    output wire [0:0] out_memdep_k0_ZTS9VectorAdd_avm_enable,
    output wire [0:0] out_memdep_k0_ZTS9VectorAdd_avm_read,
    output wire [0:0] out_memdep_k0_ZTS9VectorAdd_avm_write,
    output wire [511:0] out_memdep_k0_ZTS9VectorAdd_avm_writedata,
    output wire [0:0] out_o_active_memdep,
    output wire [0:0] out_stall_out,
    output wire [32:0] out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_address,
    output wire [4:0] out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_burstcount,
    output wire [63:0] out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_byteenable,
    output wire [0:0] out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_enable,
    output wire [0:0] out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_read,
    output wire [0:0] out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_write,
    output wire [511:0] out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writedata,
    output wire [32:0] out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_address,
    output wire [4:0] out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_burstcount,
    output wire [63:0] out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_byteenable,
    output wire [0:0] out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_enable,
    output wire [0:0] out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_read,
    output wire [0:0] out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_write,
    output wire [511:0] out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_arg_acl_global_size_0,
    input wire [63:0] in_arg_acl_global_size_1,
    input wire [63:0] in_arg_acl_global_size_2,
    input wire [31:0] in_arg_acl_local_size_0,
    input wire [31:0] in_arg_acl_local_size_1,
    input wire [31:0] in_arg_acl_local_size_2,
    input wire [63:0] in_arg_arg0,
    input wire [63:0] in_arg_arg4,
    input wire [63:0] in_arg_arg8,
    input wire [511:0] in_memdep_k0_ZTS9VectorAdd_avm_readdata,
    input wire [0:0] in_memdep_k0_ZTS9VectorAdd_avm_readdatavalid,
    input wire [0:0] in_memdep_k0_ZTS9VectorAdd_avm_waitrequest,
    input wire [0:0] in_memdep_k0_ZTS9VectorAdd_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [511:0] in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_readdata,
    input wire [0:0] in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_readdatavalid,
    input wire [0:0] in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_waitrequest,
    input wire [0:0] in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writeack,
    input wire [511:0] in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_readdata,
    input wire [0:0] in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_readdatavalid,
    input wire [0:0] in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_waitrequest,
    input wire [0:0] in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writeack,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_arg_arg1_0_tpl,
    input wire [63:0] in_arg_arg10_0_tpl,
    input wire [63:0] in_arg_arg11_0_tpl,
    input wire [63:0] in_arg_arg2_0_tpl,
    input wire [63:0] in_arg_arg3_0_tpl,
    input wire [63:0] in_arg_arg5_0_tpl,
    input wire [63:0] in_arg_arg6_0_tpl,
    input wire [63:0] in_arg_arg7_0_tpl,
    input wire [63:0] in_arg_arg9_0_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] VectorAdd_B1_x_i_capture;
    wire VectorAdd_B1_x_i_capture_bitsignaltemp;
    wire [0:0] VectorAdd_B1_x_i_clear;
    wire VectorAdd_B1_x_i_clear_bitsignaltemp;
    wire [0:0] VectorAdd_B1_x_i_enable;
    wire VectorAdd_B1_x_i_enable_bitsignaltemp;
    wire [0:0] VectorAdd_B1_x_i_shift;
    wire VectorAdd_B1_x_i_shift_bitsignaltemp;
    wire [0:0] VectorAdd_B1_x_i_stall_pred;
    wire VectorAdd_B1_x_i_stall_pred_bitsignaltemp;
    wire [0:0] VectorAdd_B1_x_i_stall_succ;
    wire VectorAdd_B1_x_i_stall_succ_bitsignaltemp;
    wire [0:0] VectorAdd_B1_x_i_valid_loop;
    wire VectorAdd_B1_x_i_valid_loop_bitsignaltemp;
    wire [0:0] VectorAdd_B1_x_i_valid_pred;
    wire VectorAdd_B1_x_i_valid_pred_bitsignaltemp;
    wire [0:0] VectorAdd_B1_x_i_valid_succ;
    wire VectorAdd_B1_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_ZTS9VectorAdd_B2_out_feedback_out_0;
    wire [0:0] bb_ZTS9VectorAdd_B2_out_feedback_valid_out_0;
    wire [0:0] bb_ZTS9VectorAdd_B2_out_stall_out_0;
    wire [0:0] bb_ZTS9VectorAdd_B2_out_valid_out_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_sr_out_o_valid;
    wire [0:0] bb_ZTS9VectorAdd_B0_aunroll_x_out_feedback_stall_out_0;
    wire [0:0] bb_ZTS9VectorAdd_B0_aunroll_x_out_stall_out_0;
    wire [0:0] bb_ZTS9VectorAdd_B0_aunroll_x_out_valid_out_0;
    wire [0:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_lsu_memdep_o_active;
    wire [32:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_address;
    wire [4:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_burstcount;
    wire [63:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_byteenable;
    wire [0:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_enable;
    wire [0:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_read;
    wire [0:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_write;
    wire [511:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_writedata;
    wire [0:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_stall_in_0;
    wire [0:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_stall_out_0;
    wire [0:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_stall_out_1;
    wire [32:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_address;
    wire [4:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_burstcount;
    wire [63:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_byteenable;
    wire [0:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_enable;
    wire [0:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_read;
    wire [0:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_write;
    wire [511:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writedata;
    wire [32:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_address;
    wire [4:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_burstcount;
    wire [63:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_byteenable;
    wire [0:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_enable;
    wire [0:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_read;
    wire [0:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_write;
    wire [511:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writedata;
    wire [0:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_valid_in_0;
    wire [0:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_valid_in_1;
    wire [0:0] bb_ZTS9VectorAdd_B1_aunroll_x_out_valid_out_0;
    wire [0:0] bb_ZTS9VectorAdd_B1_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_ZTS9VectorAdd_B1_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_ZTS9VectorAdd_B1_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_ZTS9VectorAdd_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_ZTS9VectorAdd_B2_sr_0_aunroll_x_out_o_valid;


    // bb_ZTS9VectorAdd_B0_aunroll_x(BLACKBOX,36)
    k0_ZTS9VectorAdd_bb_ZTS9VectorAdd_B0 thebb_ZTS9VectorAdd_B0_aunroll_x (
        .in_arg0(in_arg_arg0),
        .in_arg4(in_arg_arg4),
        .in_arg8(in_arg_arg8),
        .in_feedback_in_0(bb_ZTS9VectorAdd_B2_out_feedback_out_0),
        .in_feedback_valid_in_0(bb_ZTS9VectorAdd_B2_out_feedback_valid_out_0),
        .in_stall_in_0(bb_ZTS9VectorAdd_B1_sr_1_aunroll_x_out_o_stall),
        .in_valid_in_0(in_valid_in),
        .in_arg11_0_tpl(in_arg_arg11_0_tpl),
        .in_arg3_0_tpl(in_arg_arg3_0_tpl),
        .in_arg7_0_tpl(in_arg_arg7_0_tpl),
        .out_feedback_stall_out_0(bb_ZTS9VectorAdd_B0_aunroll_x_out_feedback_stall_out_0),
        .out_stall_out_0(bb_ZTS9VectorAdd_B0_aunroll_x_out_stall_out_0),
        .out_valid_out_0(bb_ZTS9VectorAdd_B0_aunroll_x_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTS9VectorAdd_B2(BLACKBOX,3)
    k0_ZTS9VectorAdd_bb_ZTS9VectorAdd_B2 thebb_ZTS9VectorAdd_B2 (
        .in_feedback_stall_in_0(bb_ZTS9VectorAdd_B0_aunroll_x_out_feedback_stall_out_0),
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_ZTS9VectorAdd_B2_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_0(bb_ZTS9VectorAdd_B2_out_feedback_out_0),
        .out_feedback_valid_out_0(bb_ZTS9VectorAdd_B2_out_feedback_valid_out_0),
        .out_stall_out_0(bb_ZTS9VectorAdd_B2_out_stall_out_0),
        .out_valid_out_0(bb_ZTS9VectorAdd_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTS9VectorAdd_B2_sr_0_aunroll_x(BLACKBOX,39)
    k0_ZTS9VectorAdd_bb_ZTS9VectorAdd_B2_sr_0 thebb_ZTS9VectorAdd_B2_sr_0_aunroll_x (
        .in_i_stall(bb_ZTS9VectorAdd_B2_out_stall_out_0),
        .in_i_valid(bb_ZTS9VectorAdd_B1_aunroll_x_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_ZTS9VectorAdd_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_ZTS9VectorAdd_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_sr(BLACKBOX,11)
    k0_ZTS9VectorAdd_i_llvm_fpga_pipeline_ke0000k0_zts9vectoradd4_sr thei_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_ZTS9VectorAdd_B1_aunroll_x_out_stall_out_0),
        .in_i_valid(bb_ZTS9VectorAdd_B1_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTS9VectorAdd_B1_aunroll_x(BLACKBOX,37)
    k0_ZTS9VectorAdd_bb_ZTS9VectorAdd_B1 thebb_ZTS9VectorAdd_B1_aunroll_x (
        .in_arg0(in_arg_arg0),
        .in_arg4(in_arg_arg4),
        .in_arg8(in_arg_arg8),
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_ZTS9VectorAdd_B1_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_k0_ZTS9VectorAdd_avm_readdata(in_memdep_k0_ZTS9VectorAdd_avm_readdata),
        .in_memdep_k0_ZTS9VectorAdd_avm_readdatavalid(in_memdep_k0_ZTS9VectorAdd_avm_readdatavalid),
        .in_memdep_k0_ZTS9VectorAdd_avm_waitrequest(in_memdep_k0_ZTS9VectorAdd_avm_waitrequest),
        .in_memdep_k0_ZTS9VectorAdd_avm_writeack(in_memdep_k0_ZTS9VectorAdd_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_sr_out_o_stall),
        .in_stall_in_0(bb_ZTS9VectorAdd_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_readdata(in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_readdata),
        .in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_readdatavalid(in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_readdatavalid),
        .in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_waitrequest(in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_waitrequest),
        .in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writeack(in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writeack),
        .in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_readdata(in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_readdata),
        .in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_readdatavalid(in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_readdatavalid),
        .in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_waitrequest(in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_waitrequest),
        .in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writeack(in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_k0_zts9vectoradd4_sr_out_o_valid),
        .in_valid_in_1(bb_ZTS9VectorAdd_B1_sr_1_aunroll_x_out_o_valid),
        .in_arg11_0_tpl(in_arg_arg11_0_tpl),
        .in_arg3_0_tpl(in_arg_arg3_0_tpl),
        .in_arg7_0_tpl(in_arg_arg7_0_tpl),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_lsu_memdep_o_active(bb_ZTS9VectorAdd_B1_aunroll_x_out_lsu_memdep_o_active),
        .out_memdep_k0_ZTS9VectorAdd_avm_address(bb_ZTS9VectorAdd_B1_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_address),
        .out_memdep_k0_ZTS9VectorAdd_avm_burstcount(bb_ZTS9VectorAdd_B1_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_burstcount),
        .out_memdep_k0_ZTS9VectorAdd_avm_byteenable(bb_ZTS9VectorAdd_B1_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_byteenable),
        .out_memdep_k0_ZTS9VectorAdd_avm_enable(bb_ZTS9VectorAdd_B1_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_enable),
        .out_memdep_k0_ZTS9VectorAdd_avm_read(bb_ZTS9VectorAdd_B1_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_read),
        .out_memdep_k0_ZTS9VectorAdd_avm_write(bb_ZTS9VectorAdd_B1_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_write),
        .out_memdep_k0_ZTS9VectorAdd_avm_writedata(bb_ZTS9VectorAdd_B1_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_writedata),
        .out_pipeline_valid_out(bb_ZTS9VectorAdd_B1_aunroll_x_out_pipeline_valid_out),
        .out_stall_in_0(bb_ZTS9VectorAdd_B1_aunroll_x_out_stall_in_0),
        .out_stall_out_0(bb_ZTS9VectorAdd_B1_aunroll_x_out_stall_out_0),
        .out_stall_out_1(bb_ZTS9VectorAdd_B1_aunroll_x_out_stall_out_1),
        .out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_address(bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_address),
        .out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_burstcount(bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_burstcount),
        .out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_byteenable(bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_byteenable),
        .out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_enable(bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_enable),
        .out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_read(bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_read),
        .out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_write(bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_write),
        .out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writedata(bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writedata),
        .out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_address(bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_address),
        .out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_burstcount(bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_burstcount),
        .out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_byteenable(bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_byteenable),
        .out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_enable(bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_enable),
        .out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_read(bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_read),
        .out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_write(bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_write),
        .out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writedata(bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writedata),
        .out_valid_in_0(bb_ZTS9VectorAdd_B1_aunroll_x_out_valid_in_0),
        .out_valid_in_1(bb_ZTS9VectorAdd_B1_aunroll_x_out_valid_in_1),
        .out_valid_out_0(bb_ZTS9VectorAdd_B1_aunroll_x_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTS9VectorAdd_B1_sr_1_aunroll_x(BLACKBOX,38)
    k0_ZTS9VectorAdd_bb_ZTS9VectorAdd_B1_sr_1 thebb_ZTS9VectorAdd_B1_sr_1_aunroll_x (
        .in_i_stall(bb_ZTS9VectorAdd_B1_aunroll_x_out_stall_out_1),
        .in_i_valid(bb_ZTS9VectorAdd_B0_aunroll_x_out_valid_out_0),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_ZTS9VectorAdd_B1_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_ZTS9VectorAdd_B1_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_ZTS9VectorAdd_B1_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VectorAdd_B1_x(EXTIFACE,2)
    assign VectorAdd_B1_x_i_capture = GND_q;
    assign VectorAdd_B1_x_i_clear = GND_q;
    assign VectorAdd_B1_x_i_enable = VCC_q;
    assign VectorAdd_B1_x_i_shift = GND_q;
    assign VectorAdd_B1_x_i_stall_pred = bb_ZTS9VectorAdd_B1_sr_1_aunroll_x_out_o_stall;
    assign VectorAdd_B1_x_i_stall_succ = bb_ZTS9VectorAdd_B1_aunroll_x_out_stall_in_0;
    assign VectorAdd_B1_x_i_valid_loop = bb_ZTS9VectorAdd_B1_aunroll_x_out_valid_in_0;
    assign VectorAdd_B1_x_i_valid_pred = bb_ZTS9VectorAdd_B1_aunroll_x_out_valid_in_1;
    assign VectorAdd_B1_x_i_valid_succ = bb_ZTS9VectorAdd_B1_aunroll_x_out_valid_out_0;
    assign VectorAdd_B1_x_i_capture_bitsignaltemp = VectorAdd_B1_x_i_capture[0];
    assign VectorAdd_B1_x_i_clear_bitsignaltemp = VectorAdd_B1_x_i_clear[0];
    assign VectorAdd_B1_x_i_enable_bitsignaltemp = VectorAdd_B1_x_i_enable[0];
    assign VectorAdd_B1_x_i_shift_bitsignaltemp = VectorAdd_B1_x_i_shift[0];
    assign VectorAdd_B1_x_i_stall_pred_bitsignaltemp = VectorAdd_B1_x_i_stall_pred[0];
    assign VectorAdd_B1_x_i_stall_succ_bitsignaltemp = VectorAdd_B1_x_i_stall_succ[0];
    assign VectorAdd_B1_x_i_valid_loop_bitsignaltemp = VectorAdd_B1_x_i_valid_loop[0];
    assign VectorAdd_B1_x_i_valid_pred_bitsignaltemp = VectorAdd_B1_x_i_valid_pred[0];
    assign VectorAdd_B1_x_i_valid_succ_bitsignaltemp = VectorAdd_B1_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("VectorAdd.B1")
    ) theVectorAdd_B1_x (
        .i_capture(VectorAdd_B1_x_i_capture_bitsignaltemp),
        .i_clear(VectorAdd_B1_x_i_clear_bitsignaltemp),
        .i_enable(VectorAdd_B1_x_i_enable_bitsignaltemp),
        .i_shift(VectorAdd_B1_x_i_shift_bitsignaltemp),
        .i_stall_pred(VectorAdd_B1_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(VectorAdd_B1_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(VectorAdd_B1_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(VectorAdd_B1_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(VectorAdd_B1_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_memdep_k0_ZTS9VectorAdd_avm_address(GPOUT,12)
    assign out_memdep_k0_ZTS9VectorAdd_avm_address = bb_ZTS9VectorAdd_B1_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_address;

    // out_memdep_k0_ZTS9VectorAdd_avm_burstcount(GPOUT,13)
    assign out_memdep_k0_ZTS9VectorAdd_avm_burstcount = bb_ZTS9VectorAdd_B1_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_burstcount;

    // out_memdep_k0_ZTS9VectorAdd_avm_byteenable(GPOUT,14)
    assign out_memdep_k0_ZTS9VectorAdd_avm_byteenable = bb_ZTS9VectorAdd_B1_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_byteenable;

    // out_memdep_k0_ZTS9VectorAdd_avm_enable(GPOUT,15)
    assign out_memdep_k0_ZTS9VectorAdd_avm_enable = bb_ZTS9VectorAdd_B1_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_enable;

    // out_memdep_k0_ZTS9VectorAdd_avm_read(GPOUT,16)
    assign out_memdep_k0_ZTS9VectorAdd_avm_read = bb_ZTS9VectorAdd_B1_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_read;

    // out_memdep_k0_ZTS9VectorAdd_avm_write(GPOUT,17)
    assign out_memdep_k0_ZTS9VectorAdd_avm_write = bb_ZTS9VectorAdd_B1_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_write;

    // out_memdep_k0_ZTS9VectorAdd_avm_writedata(GPOUT,18)
    assign out_memdep_k0_ZTS9VectorAdd_avm_writedata = bb_ZTS9VectorAdd_B1_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_writedata;

    // out_o_active_memdep(GPOUT,19)
    assign out_o_active_memdep = bb_ZTS9VectorAdd_B1_aunroll_x_out_lsu_memdep_o_active;

    // out_stall_out(GPOUT,20)
    assign out_stall_out = bb_ZTS9VectorAdd_B0_aunroll_x_out_stall_out_0;

    // out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_address(GPOUT,21)
    assign out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_address = bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_address;

    // out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_burstcount(GPOUT,22)
    assign out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_burstcount = bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_burstcount;

    // out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_byteenable(GPOUT,23)
    assign out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_byteenable = bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_byteenable;

    // out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_enable(GPOUT,24)
    assign out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_enable = bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_enable;

    // out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_read(GPOUT,25)
    assign out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_read = bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_read;

    // out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_write(GPOUT,26)
    assign out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_write = bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_write;

    // out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writedata(GPOUT,27)
    assign out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writedata = bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writedata;

    // out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_address(GPOUT,28)
    assign out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_address = bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_address;

    // out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_burstcount(GPOUT,29)
    assign out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_burstcount = bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_burstcount;

    // out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_byteenable(GPOUT,30)
    assign out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_byteenable = bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_byteenable;

    // out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_enable(GPOUT,31)
    assign out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_enable = bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_enable;

    // out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_read(GPOUT,32)
    assign out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_read = bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_read;

    // out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_write(GPOUT,33)
    assign out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_write = bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_write;

    // out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writedata(GPOUT,34)
    assign out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writedata = bb_ZTS9VectorAdd_B1_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writedata;

    // out_valid_out(GPOUT,35)
    assign out_valid_out = bb_ZTS9VectorAdd_B2_out_valid_out_0;

endmodule
