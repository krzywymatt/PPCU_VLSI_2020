/******************************************************************************
 * (C) Copyright 2019 AGH UST All Rights Reserved
 *
 * MODULE:    mtm_Alu_serializer
 * PROJECT:   PPCU_VLSI
 * AUTHORS:   Mateusz Krzyworzeka, Jakub Filipiak
 * DATE:      04.04.2020
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
 
 module mtm_Alu_serializer (
	input wire clk,
	input wire rst_n,
	input wire tx_data,
	input wire error_occured,
	input wire [31:0] data_C,
	input wire [3:0]  data_flag,
	input wire [2:0]  data_crc,
	input wire [5:0]  error_flag,
	
	output reg sout
 );
   //______________PARAMS______________ 
	localparam SER_IDLE			= 2'b00;
	localparam SER_ERROR_FRAME	= 2'b01;
	localparam SER_DATA_FRAME	= 2'b10;
	localparam SER_SEND_DATA	= 2'b11;

   //_______________REGS_______________ 
	reg        sout_nxt;
	reg [54:0] data_buf,   data_buf_nxt;
	reg [5:0]  bit_cnt,    bit_cnt_nxt;
	reg [1:0]  state,      state_nxt;
	reg        error_info, error_info_nxt;
	reg [10:0] ctl,        ctl_nxt;
	
   //________SEQUENTIAL_LOGIC__________ 
	always @(posedge clk) 
	begin
		if(!rst_n)
		begin
			state			<= SER_IDLE;
			data_buf		<= 55'b0;
			ctl         	<= 11'b0;
			bit_cnt  		<= 6'b0;
			sout			<= 1'b1;
			error_info  	<= 1'b0;
				
		end
		else 
		begin
			state			<= state_nxt;
			data_buf		<= data_buf_nxt;
			ctl         	<= ctl_nxt;
			bit_cnt	    	<= bit_cnt_nxt;
			sout			<= sout_nxt;
			error_info  	<= error_info_nxt;			
		end
	end
		
	
   //________NEXT_STATE_LOGIC_________ 
	always @*
    begin
        casex({state,           error_occured, bit_cnt,   tx_data})
             ({SER_IDLE,        1'b1,          6'bxxxxxx, 1'bx   }): state_nxt = SER_ERROR_FRAME;
             ({SER_IDLE,        1'b0,          6'bxxxxxx, 1'b1   }): state_nxt = SER_DATA_FRAME;
             ({SER_IDLE,        1'bx,          6'bxxxxxx, 1'bx   }): state_nxt = SER_IDLE;
             ({SER_ERROR_FRAME, 1'bx,          6'bxxxxxx, 1'bx   }): state_nxt = SER_SEND_DATA;
             ({SER_DATA_FRAME,  1'bx,          6'bxxxxxx, 1'bx   }): state_nxt = SER_SEND_DATA;
             ({SER_SEND_DATA,   1'bx,          6'b000000, 1'bx   }): state_nxt = SER_IDLE;
             ({SER_SEND_DATA,   1'bx,          6'bxxxxxx, 1'bx   }): state_nxt = SER_SEND_DATA;
             default:                                                state_nxt = state;
        endcase
    end   
        

   //________COMBINATIONAL_LOGIC_________ 
	always @*
	begin 
		data_buf_nxt   = data_buf;
		ctl_nxt        = ctl;
		bit_cnt_nxt    = bit_cnt;
		sout_nxt       = sout;
		error_info_nxt = error_info;		
		
		case(state_nxt)
			SER_IDLE: 
			begin
				data_buf_nxt    = 55'b0;
				ctl_nxt         = 11'b0; 
				bit_cnt_nxt     = 6'b0;
				sout_nxt        = 1'b1;
				error_info_nxt  = 1'b0;   								
			end
			
			SER_ERROR_FRAME: 
			begin
				bit_cnt_nxt    = 6'd11;
				ctl_nxt[10:0]  = {3'b011, error_flag, 2'b11};
				error_info_nxt = 1'b1;			        
			end
			
			SER_DATA_FRAME: 
			begin
				bit_cnt_nxt    = 6'd55;
				data_buf_nxt   = {2'b00, data_C[31:24], 1'b1, 2'b00, data_C[23:16], 1'b1, 2'b00, data_C[15:8], 1'b1, 2'b00, data_C[7:0], 1'b1, 2'b01,1'b0, data_flag, data_crc, 1'b1};
				error_info_nxt = 1'b0;
			end
			
			SER_SEND_DATA: 
			begin
				if ( error_info == 1'b0 )
				begin
					bit_cnt_nxt  = bit_cnt - 1'b1;
					data_buf_nxt ={data_buf[53:0], 1'b0};
					sout_nxt     = data_buf[54];
				end
				else
				begin
					bit_cnt_nxt  = bit_cnt - 1'b1;
					ctl_nxt      = {ctl[9:0], 1'b0};
					sout_nxt     = ctl[10];
				end
			end	
		endcase
	end
 endmodule
