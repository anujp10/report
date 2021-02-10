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

// SystemVerilog created from k0_ZTS9VectorAdd_i_llvm_fpga_push_i15_fp0000h3_k0_zts9vectoradd0
// SystemVerilog created on Tue Feb  9 22:08:51 2021


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTS9VectorAdd_i_llvm_fpga_push_i15_fp0000h3_k0_zts9vectoradd0 (
    input wire [0:0] in_feedback_stall_in_3,
    output wire [15:0] out_feedback_out_3,
    output wire [0:0] out_feedback_valid_out_3,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [14:0] in_data_in,
    input wire [0:0] in_keep_going,
    input wire [0:0] in_valid_in,
    output wire [14:0] out_data_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [14:0] adapt_scalar_trunc4_in;
    wire [14:0] adapt_scalar_trunc4_q;
    wire [15:0] element_extension2_q;
    wire [15:0] i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_data_in;
    wire [0:0] i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_dir;
    wire i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_dir_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_feedback_stall_in;
    wire i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_feedback_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_predicate;
    wire i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_stall_in;
    wire i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_valid_in;
    wire i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_valid_in_bitsignaltemp;
    wire [15:0] i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_data_out;
    wire [15:0] i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_feedback_out;
    wire [0:0] i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_feedback_valid_out;
    wire i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_feedback_valid_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_stall_out;
    wire i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_valid_out;
    wire i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_valid_out_bitsignaltemp;
    wire [14:0] i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_reg_out_data_out;
    wire [0:0] i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_reg_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_reg_out_valid_out;


    // adapt_scalar_trunc4(ROUND,2)
    assign adapt_scalar_trunc4_in = i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_data_out[14:0];
    assign adapt_scalar_trunc4_q = adapt_scalar_trunc4_in[14:0];

    // i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_reg(BLACKBOX,8)@20000000
    // out out_data_out@20000001
    // out out_valid_out@20000001
    k0_ZTS9VectorAdd_i_llvm_fpga_push_i15_fp0000_zts9vectoradd46_reg thei_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_reg (
        .in_data_in(adapt_scalar_trunc4_q),
        .in_stall_in(in_stall_in),
        .in_valid_in(i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_valid_out),
        .out_data_out(i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_reg_out_data_out),
        .out_stall_out(i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_reg_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // element_extension2(BITJOIN,4)
    assign element_extension2_q = {GND_q, in_data_in};

    // i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1(EXTIFACE,7)
    assign i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_data_in = element_extension2_q;
    assign i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_dir = in_keep_going;
    assign i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_feedback_stall_in = in_feedback_stall_in_3;
    assign i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_predicate = GND_q;
    assign i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_stall_in = i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_reg_out_stall_out;
    assign i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_valid_in = in_valid_in;
    assign i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_dir_bitsignaltemp = i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_dir[0];
    assign i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_feedback_stall_in_bitsignaltemp = i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_feedback_stall_in[0];
    assign i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_predicate_bitsignaltemp = i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_predicate[0];
    assign i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_stall_in_bitsignaltemp = i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_stall_in[0];
    assign i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_valid_in_bitsignaltemp = i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_valid_in[0];
    assign i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_feedback_valid_out[0] = i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_feedback_valid_out_bitsignaltemp;
    assign i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_stall_out[0] = i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_stall_out_bitsignaltemp;
    assign i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_valid_out[0] = i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_valid_out_bitsignaltemp;
    acl_push #(
        .FIFO_DEPTH(2),
        .INF_LOOP(0),
        .INF_LOOP_INITIALIZATION(16'b0000000000000000),
        .MIN_FIFO_LATENCY(279),
        .STYLE("REGULAR"),
        .ASYNC_RESET(1),
        .DATA_WIDTH(16),
        .ENABLED(0),
        .RAM_FIFO_DEPTH_INC(0),
        .STALLFREE(0),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1 (
        .data_in(element_extension2_q),
        .dir(i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_dir_bitsignaltemp),
        .feedback_stall_in(i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_feedback_stall_in_bitsignaltemp),
        .predicate(i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_predicate_bitsignaltemp),
        .stall_in(i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_data_out),
        .feedback_out(i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_feedback_out),
        .feedback_valid_out(i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_feedback_valid_out_bitsignaltemp),
        .stall_out(i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_sync_out(GPOUT,6)
    assign out_feedback_out_3 = i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_feedback_out;
    assign out_feedback_valid_out_3 = i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_feedback_valid_out;

    // sync_out(GPOUT,10)@20000000
    assign out_stall_out = i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd1_stall_out;

    // dupName_0_sync_out_x(GPOUT,12)@282
    assign out_data_out = i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_reg_out_data_out;
    assign out_valid_out = i_llvm_fpga_push_i15_fpga_indvars_iv_push3_k0_zts9vectoradd46_reg_out_valid_out;

endmodule
