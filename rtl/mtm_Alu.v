/******************************************************************************
 * (C) Copyright 2019 AGH UST All Rights Reserved
 *
 * MODULE:    mtm_Alu
 * PROJECT:   PPCU_VLSI
 * AUTHORS:   Mateusz Krzyworzeka, Jakub Filipiak
 * DATE:      21.01.2020
 * ------------------------------------------------------------------------------
 * The ALU should operate as described in the mtmAlu_test_top module.
 * It should consist of three modules connected together:
 *   mtm_Alu_deserializer
 *   mtm_Alu_core
 *   mtm_Alu_serializer
 * The ALU should use posedge active clock and synchronous reset active LOW.
 *
 *******************************************************************************/
 `timescale 1ns/1ps

module mtm_Alu (
    input  wire clk,   // posedge active clock
    input  wire rst_n, // synchronous reset active low
    input  wire sin,   // serial data input
    output wire sout   // serial data output
);

//___________WIRES__________
	wire [31:0] A;
	wire [31:0] B;
	wire [2:0]  OP;
	wire [5:0]  error_flag;
	wire        ready_to_core;
	wire        ready_to_serial;
	wire        error_to_serial;
	wire [31:0] C;
	wire [3:0]  flags;
	wire [2:0]  crc;
	
//__________MODULES_________
mtm_Alu_deserializer u_mtm_Alu_deserializer(
   //__inputs__\\
	.clk(clk),
	.rst_n(rst_n),
	.sin(sin),
	//__outputs__\\
	.rx_ready(ready_to_core),
	.error_occured(error_to_serial),
	.data_A(A),
	.data_B(B),
	.data_OP(OP),
	.error_flag(error_flag)
);

mtm_Alu_core u_mtm_Alu_core(
   //__inputs__\\
	.clk(clk),
	.rst_n(rst_n),
	.rx_dt_ready(ready_to_core),
	.data_A(A),
	.data_B(B),
	.data_OP(OP),
	//__outputs__\\
	.tx_dt_ready(ready_to_serial),
	.data_C(C),
	.data_flag(flags),
	.data_crc(crc)
);

mtm_Alu_serializer u_mtm_Alu_serializer(
   //__inputs__\\
	.clk(clk),
	.rst_n(rst_n),
	.tx_data(ready_to_serial),
	.error_occured(error_to_serial),
	.data_C(C),
	.data_flag(flags),
	.data_crc(crc),
	.error_flag(error_flag),
	//__outputs__\\
	.sout(sout)
);

endmodule
