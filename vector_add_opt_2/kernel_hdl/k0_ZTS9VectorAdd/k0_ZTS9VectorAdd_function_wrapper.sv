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

// SystemVerilog created from k0_ZTS9VectorAdd_function_wrapper
// SystemVerilog created on Tue Feb  9 22:08:51 2021


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTS9VectorAdd_function_wrapper (
    input wire [511:0] avm_memdep_k0_ZTS9VectorAdd_readdata,
    input wire [0:0] avm_memdep_k0_ZTS9VectorAdd_readdatavalid,
    input wire [0:0] avm_memdep_k0_ZTS9VectorAdd_waitrequest,
    input wire [0:0] avm_memdep_k0_ZTS9VectorAdd_writeack,
    input wire [511:0] avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_readdata,
    input wire [0:0] avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_readdatavalid,
    input wire [0:0] avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_waitrequest,
    input wire [0:0] avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_writeack,
    input wire [511:0] avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_readdata,
    input wire [0:0] avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_readdatavalid,
    input wire [0:0] avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_waitrequest,
    input wire [0:0] avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_writeack,
    input wire [0:0] clock2x,
    input wire [63:0] global_id_0,
    input wire [63:0] global_id_1,
    input wire [63:0] global_id_2,
    input wire [63:0] global_offset_0,
    input wire [63:0] global_offset_1,
    input wire [63:0] global_offset_2,
    input wire [63:0] global_size_0,
    input wire [63:0] global_size_1,
    input wire [63:0] global_size_2,
    input wire [31:0] group_id_0,
    input wire [31:0] group_id_1,
    input wire [31:0] group_id_2,
    input wire [767:0] kernel_arguments,
    input wire [0:0] kernel_stall_in,
    input wire [0:0] kernel_valid_in,
    input wire [31:0] local_id_0,
    input wire [31:0] local_id_1,
    input wire [31:0] local_id_2,
    input wire [0:0] local_router_hang,
    input wire [31:0] local_size_0,
    input wire [31:0] local_size_1,
    input wire [31:0] local_size_2,
    input wire [31:0] num_groups_0,
    input wire [31:0] num_groups_1,
    input wire [31:0] num_groups_2,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    input wire [31:0] work_dim,
    input wire [31:0] workgroup_size,
    output wire [32:0] avm_memdep_k0_ZTS9VectorAdd_address,
    output wire [4:0] avm_memdep_k0_ZTS9VectorAdd_burstcount,
    output wire [63:0] avm_memdep_k0_ZTS9VectorAdd_byteenable,
    output wire [0:0] avm_memdep_k0_ZTS9VectorAdd_enable,
    output wire [0:0] avm_memdep_k0_ZTS9VectorAdd_read,
    output wire [0:0] avm_memdep_k0_ZTS9VectorAdd_write,
    output wire [511:0] avm_memdep_k0_ZTS9VectorAdd_writedata,
    output wire [32:0] avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_address,
    output wire [4:0] avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_burstcount,
    output wire [63:0] avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_byteenable,
    output wire [0:0] avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_enable,
    output wire [0:0] avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_read,
    output wire [0:0] avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_write,
    output wire [511:0] avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_writedata,
    output wire [32:0] avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_address,
    output wire [4:0] avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_burstcount,
    output wire [63:0] avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_byteenable,
    output wire [0:0] avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_enable,
    output wire [0:0] avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_read,
    output wire [0:0] avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_write,
    output wire [511:0] avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_writedata,
    output wire [0:0] clock2x_output,
    output wire [0:0] has_a_lsu_active,
    output wire [0:0] has_a_write_pending,
    output wire [0:0] kernel_stall_out,
    output wire [0:0] kernel_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] acl_clock2x_dummy_consumer_clock2x;
    wire acl_clock2x_dummy_consumer_clock2x_bitsignaltemp;
    wire [0:0] acl_clock2x_dummy_consumer_myout;
    wire acl_clock2x_dummy_consumer_myout_bitsignaltemp;
    wire [63:0] arg_arg0_select_b;
    wire [63:0] arg_arg10_select_b;
    wire [63:0] arg_arg11_select_b;
    wire [63:0] arg_arg1_select_b;
    wire [63:0] arg_arg2_select_b;
    wire [63:0] arg_arg3_select_b;
    wire [63:0] arg_arg4_select_b;
    wire [63:0] arg_arg5_select_b;
    wire [63:0] arg_arg6_select_b;
    wire [63:0] arg_arg7_select_b;
    wire [63:0] arg_arg8_select_b;
    wire [63:0] arg_arg9_select_b;
    wire [32:0] k0_ZTS9VectorAdd_function_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_address;
    wire [4:0] k0_ZTS9VectorAdd_function_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_burstcount;
    wire [63:0] k0_ZTS9VectorAdd_function_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_byteenable;
    wire [0:0] k0_ZTS9VectorAdd_function_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_enable;
    wire [0:0] k0_ZTS9VectorAdd_function_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_read;
    wire [0:0] k0_ZTS9VectorAdd_function_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_write;
    wire [511:0] k0_ZTS9VectorAdd_function_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_writedata;
    wire [0:0] k0_ZTS9VectorAdd_function_aunroll_x_out_o_active_memdep;
    wire [0:0] k0_ZTS9VectorAdd_function_aunroll_x_out_stall_out;
    wire [32:0] k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_address;
    wire [4:0] k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_burstcount;
    wire [63:0] k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_byteenable;
    wire [0:0] k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_enable;
    wire [0:0] k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_read;
    wire [0:0] k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_write;
    wire [511:0] k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writedata;
    wire [32:0] k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_address;
    wire [4:0] k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_burstcount;
    wire [63:0] k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_byteenable;
    wire [0:0] k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_enable;
    wire [0:0] k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_read;
    wire [0:0] k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_write;
    wire [511:0] k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writedata;
    wire [0:0] k0_ZTS9VectorAdd_function_aunroll_x_out_valid_out;


    // arg_arg9_select(BITSELECT,14)
    assign arg_arg9_select_b = kernel_arguments[639:576];

    // arg_arg7_select(BITSELECT,12)
    assign arg_arg7_select_b = kernel_arguments[511:448];

    // arg_arg6_select(BITSELECT,11)
    assign arg_arg6_select_b = kernel_arguments[447:384];

    // arg_arg5_select(BITSELECT,10)
    assign arg_arg5_select_b = kernel_arguments[383:320];

    // arg_arg3_select(BITSELECT,8)
    assign arg_arg3_select_b = kernel_arguments[255:192];

    // arg_arg2_select(BITSELECT,7)
    assign arg_arg2_select_b = kernel_arguments[191:128];

    // arg_arg11_select(BITSELECT,5)
    assign arg_arg11_select_b = kernel_arguments[767:704];

    // arg_arg10_select(BITSELECT,4)
    assign arg_arg10_select_b = kernel_arguments[703:640];

    // arg_arg1_select(BITSELECT,6)
    assign arg_arg1_select_b = kernel_arguments[127:64];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // arg_arg8_select(BITSELECT,13)
    assign arg_arg8_select_b = kernel_arguments[575:512];

    // arg_arg4_select(BITSELECT,9)
    assign arg_arg4_select_b = kernel_arguments[319:256];

    // arg_arg0_select(BITSELECT,3)
    assign arg_arg0_select_b = kernel_arguments[63:0];

    // k0_ZTS9VectorAdd_function_aunroll_x(BLACKBOX,124)
    k0_ZTS9VectorAdd_function thek0_ZTS9VectorAdd_function_aunroll_x (
        .in_arg_acl_global_size_0(global_size_0),
        .in_arg_acl_global_size_1(global_size_1),
        .in_arg_acl_global_size_2(global_size_2),
        .in_arg_acl_local_size_0(local_size_0),
        .in_arg_acl_local_size_1(local_size_1),
        .in_arg_acl_local_size_2(local_size_2),
        .in_arg_arg0(arg_arg0_select_b),
        .in_arg_arg4(arg_arg4_select_b),
        .in_arg_arg8(arg_arg8_select_b),
        .in_memdep_k0_ZTS9VectorAdd_avm_readdata(avm_memdep_k0_ZTS9VectorAdd_readdata),
        .in_memdep_k0_ZTS9VectorAdd_avm_readdatavalid(avm_memdep_k0_ZTS9VectorAdd_readdatavalid),
        .in_memdep_k0_ZTS9VectorAdd_avm_waitrequest(avm_memdep_k0_ZTS9VectorAdd_waitrequest),
        .in_memdep_k0_ZTS9VectorAdd_avm_writeack(avm_memdep_k0_ZTS9VectorAdd_writeack),
        .in_stall_in(GND_q),
        .in_start(start),
        .in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_readdata(avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_readdata),
        .in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_readdatavalid(avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_readdatavalid),
        .in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_waitrequest(avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_waitrequest),
        .in_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writeack(avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_writeack),
        .in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_readdata(avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_readdata),
        .in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_readdatavalid(avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_readdatavalid),
        .in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_waitrequest(avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_waitrequest),
        .in_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writeack(avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_writeack),
        .in_valid_in(kernel_valid_in),
        .in_arg_arg1_0_tpl(arg_arg1_select_b),
        .in_arg_arg10_0_tpl(arg_arg10_select_b),
        .in_arg_arg11_0_tpl(arg_arg11_select_b),
        .in_arg_arg2_0_tpl(arg_arg2_select_b),
        .in_arg_arg3_0_tpl(arg_arg3_select_b),
        .in_arg_arg5_0_tpl(arg_arg5_select_b),
        .in_arg_arg6_0_tpl(arg_arg6_select_b),
        .in_arg_arg7_0_tpl(arg_arg7_select_b),
        .in_arg_arg9_0_tpl(arg_arg9_select_b),
        .out_memdep_k0_ZTS9VectorAdd_avm_address(k0_ZTS9VectorAdd_function_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_address),
        .out_memdep_k0_ZTS9VectorAdd_avm_burstcount(k0_ZTS9VectorAdd_function_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_burstcount),
        .out_memdep_k0_ZTS9VectorAdd_avm_byteenable(k0_ZTS9VectorAdd_function_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_byteenable),
        .out_memdep_k0_ZTS9VectorAdd_avm_enable(k0_ZTS9VectorAdd_function_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_enable),
        .out_memdep_k0_ZTS9VectorAdd_avm_read(k0_ZTS9VectorAdd_function_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_read),
        .out_memdep_k0_ZTS9VectorAdd_avm_write(k0_ZTS9VectorAdd_function_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_write),
        .out_memdep_k0_ZTS9VectorAdd_avm_writedata(k0_ZTS9VectorAdd_function_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_writedata),
        .out_o_active_memdep(k0_ZTS9VectorAdd_function_aunroll_x_out_o_active_memdep),
        .out_stall_out(k0_ZTS9VectorAdd_function_aunroll_x_out_stall_out),
        .out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_address(k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_address),
        .out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_burstcount(k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_burstcount),
        .out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_byteenable(k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_byteenable),
        .out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_enable(k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_enable),
        .out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_read(k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_read),
        .out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_write(k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_write),
        .out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writedata(k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writedata),
        .out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_address(k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_address),
        .out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_burstcount(k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_burstcount),
        .out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_byteenable(k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_byteenable),
        .out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_enable(k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_enable),
        .out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_read(k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_read),
        .out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_write(k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_write),
        .out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writedata(k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writedata),
        .out_valid_out(k0_ZTS9VectorAdd_function_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_k0_ZTS9VectorAdd_address(GPOUT,98)
    assign avm_memdep_k0_ZTS9VectorAdd_address = k0_ZTS9VectorAdd_function_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_address;

    // avm_memdep_k0_ZTS9VectorAdd_burstcount(GPOUT,99)
    assign avm_memdep_k0_ZTS9VectorAdd_burstcount = k0_ZTS9VectorAdd_function_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_burstcount;

    // avm_memdep_k0_ZTS9VectorAdd_byteenable(GPOUT,100)
    assign avm_memdep_k0_ZTS9VectorAdd_byteenable = k0_ZTS9VectorAdd_function_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_byteenable;

    // avm_memdep_k0_ZTS9VectorAdd_enable(GPOUT,101)
    assign avm_memdep_k0_ZTS9VectorAdd_enable = k0_ZTS9VectorAdd_function_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_enable;

    // avm_memdep_k0_ZTS9VectorAdd_read(GPOUT,102)
    assign avm_memdep_k0_ZTS9VectorAdd_read = k0_ZTS9VectorAdd_function_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_read;

    // avm_memdep_k0_ZTS9VectorAdd_write(GPOUT,103)
    assign avm_memdep_k0_ZTS9VectorAdd_write = k0_ZTS9VectorAdd_function_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_write;

    // avm_memdep_k0_ZTS9VectorAdd_writedata(GPOUT,104)
    assign avm_memdep_k0_ZTS9VectorAdd_writedata = k0_ZTS9VectorAdd_function_aunroll_x_out_memdep_k0_ZTS9VectorAdd_avm_writedata;

    // avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_address(GPOUT,105)
    assign avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_address = k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_address;

    // avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_burstcount(GPOUT,106)
    assign avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_burstcount = k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_burstcount;

    // avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_byteenable(GPOUT,107)
    assign avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_byteenable = k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_byteenable;

    // avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_enable(GPOUT,108)
    assign avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_enable = k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_enable;

    // avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_read(GPOUT,109)
    assign avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_read = k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_read;

    // avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_write(GPOUT,110)
    assign avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_write = k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_write;

    // avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_writedata(GPOUT,111)
    assign avm_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_writedata = k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd2_k0_ZTS9VectorAdd_avm_writedata;

    // avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_address(GPOUT,112)
    assign avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_address = k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_address;

    // avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_burstcount(GPOUT,113)
    assign avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_burstcount = k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_burstcount;

    // avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_byteenable(GPOUT,114)
    assign avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_byteenable = k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_byteenable;

    // avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_enable(GPOUT,115)
    assign avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_enable = k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_enable;

    // avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_read(GPOUT,116)
    assign avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_read = k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_read;

    // avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_write(GPOUT,117)
    assign avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_write = k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_write;

    // avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_writedata(GPOUT,118)
    assign avm_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_writedata = k0_ZTS9VectorAdd_function_aunroll_x_out_unnamed_k0_ZTS9VectorAdd5_k0_ZTS9VectorAdd_avm_writedata;

    // acl_clock2x_dummy_consumer(EXTIFACE,2)
    assign acl_clock2x_dummy_consumer_clock2x = clock2x;
    assign acl_clock2x_dummy_consumer_clock2x_bitsignaltemp = acl_clock2x_dummy_consumer_clock2x[0];
    assign acl_clock2x_dummy_consumer_myout[0] = acl_clock2x_dummy_consumer_myout_bitsignaltemp;
    acl_clock2x_holder theacl_clock2x_dummy_consumer (
        .clock2x(acl_clock2x_dummy_consumer_clock2x_bitsignaltemp),
        .myout(acl_clock2x_dummy_consumer_myout_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // clock2x_output(GPOUT,119)
    assign clock2x_output = acl_clock2x_dummy_consumer_myout;

    // has_a_lsu_active(GPOUT,120)
    assign has_a_lsu_active = k0_ZTS9VectorAdd_function_aunroll_x_out_o_active_memdep;

    // has_a_write_pending(GPOUT,121)
    assign has_a_write_pending = k0_ZTS9VectorAdd_function_aunroll_x_out_o_active_memdep;

    // kernel_stall_out(GPOUT,122)
    assign kernel_stall_out = k0_ZTS9VectorAdd_function_aunroll_x_out_stall_out;

    // kernel_valid_out(GPOUT,123)
    assign kernel_valid_out = k0_ZTS9VectorAdd_function_aunroll_x_out_valid_out;

endmodule
