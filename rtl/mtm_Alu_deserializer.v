/******************************************************************************
 * (C) Copyright 2019 AGH UST All Rights Reserved
 *
 * MODULE:    mtm_Alu_deserializer
 * PROJECT:   PPCU_VLSI
 * AUTHORS:   Mateusz Krzyworzeka, Jakub Filipiak
 * DATE:      12.04.2020
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
 
 module mtm_Alu_deserializer (
	input  wire        clk,
	input  wire        rst_n,
	input  wire        sin,
	
	output reg         rx_ready,
	output reg         error_occured,
	output reg  [5:0]  error_flag, 
	output reg  [31:0] data_A,
	output reg  [31:0] data_B,
	output reg  [2:0]  data_OP
);
   //______________PARAMS________________
	localparam DES_IDLE         = 3'b000;
	localparam DES_TYPE         = 3'b001;
	localparam DES_DATA         = 3'b010;
	localparam DES_CHECK_DATA   = 3'b011;
	localparam DES_WAIT			= 3'b100;
	localparam DES_ERROR        = 3'b101;

	localparam ERR_DATA	     = 6'b100100;
	localparam ERR_CRC	     = 6'b010010;
	localparam ERR_OP	     = 6'b001001;
	localparam ERR_NONE	     = 6'b000000;

   //_______________REGS_________________
	reg        rx_ready_nxt;
	reg        error_occured_nxt;
	reg [5:0]  error_flag_nxt;
	reg [31:0] data_A_nxt, data_B_nxt;
	reg [2:0]  data_OP_nxt;

	reg [2:0]  state,        state_nxt;
	reg [6:0]  bit_cnt,      bit_cnt_nxt;
	reg        error,        error_nxt;
	reg [97:0] OUT,          OUT_nxt;
	reg [3:0]  crc_calculated;

   //__________SEQUENTIAL_LOGIC___________
	always @ (posedge clk) 
	begin
		if(!rst_n) 
		begin
			state	       	<= DES_IDLE;
			rx_ready       	<= 1'b0;
			error_occured  	<= 1'b0;
			error_flag     	<= ERR_NONE;
			data_A 			<= 32'b0;
			data_B		   	<= 32'b0;
			data_OP 	   	<= 3'b0;
			bit_cnt  	   	<= 4'b0;
			error	       	<= 1'b0;
			OUT			   	<= 98'b0;
		end
		else 
		begin
			state		   	<= state_nxt;
			rx_ready	   	<= rx_ready_nxt;
			error_occured  	<= error_occured_nxt;
			error_flag     	<= error_flag_nxt;	
			data_A 	 	   	<= data_A_nxt;
			data_B         	<= data_B_nxt;
			data_OP        	<= data_OP_nxt;
			bit_cnt  	   	<= bit_cnt_nxt;
			error	   	   	<= error_nxt;
			OUT 		   	<= OUT_nxt;
		end
	end
	
   //__________NEXT_STATE_LOGIC___________
    always @*
    begin
        casex 	({state,          sin,  bit_cnt,		error})
				({DES_IDLE,       1'b1, 7'bxxxxxxx,		1'bx }): state_nxt = DES_IDLE;
				({DES_IDLE,       1'b0, 7'bxxxxxxx,     1'bx }): state_nxt = DES_WAIT;
				({DES_WAIT,       1'bx, 7'bxxxxxxx,     1'bx }): state_nxt = DES_DATA;
				({DES_DATA,       1'bx, 7'd98,          1'b0 }): state_nxt = DES_CHECK_DATA;
				({DES_DATA,       1'bx, 7'bxxxxxxx,  	1'b1 }): state_nxt = DES_CHECK_DATA;
				({DES_DATA,       1'bx, 7'bxxxxxxx,     1'bx }): state_nxt = DES_DATA;
				({DES_CHECK_DATA, 1'bx, 7'bxxxxxxx,     1'b0 }): state_nxt = DES_IDLE;
				({DES_CHECK_DATA, 1'bx, 7'bxxxxxxx,     1'b1 }): state_nxt = DES_ERROR;
				({DES_ERROR,      1'bx, 7'bxxxxxxx,     1'bx }): state_nxt = DES_IDLE;
				default:                       	          		 state_nxt = state;
		endcase
	end

   //__________COMBINATIONAL_LOGIC________
	always @* 
	begin
		bit_cnt_nxt       = bit_cnt;
		error_nxt         = error;
		rx_ready_nxt      = rx_ready;
		error_occured_nxt = error_occured;
		error_flag_nxt    = error_flag;

		data_A_nxt        = data_A;
		data_B_nxt        = data_B;
		data_OP_nxt       = data_OP;
		OUT_nxt		   = OUT;

		case(state_nxt)
			DES_IDLE:
			begin
				bit_cnt_nxt        = 4'b0;
				rx_ready_nxt       = 1'b0;
				error_occured_nxt  = 1'b0;
				error_nxt          = 1'b0;
				error_flag_nxt     = ERR_NONE;
			end
			
			DES_DATA: 
			begin
				bit_cnt_nxt = bit_cnt + 4'd1;
				OUT_nxt = {OUT[96:0], sin};

				if (bit_cnt_nxt > 98) 
				begin
					error_nxt = 1'b1;
					error_flag_nxt = ERR_DATA;
				end
			end
			
			DES_CHECK_DATA:
			begin
				rx_ready_nxt = 1'b0;
				crc4_68({  {OUT[96:89],OUT[85:78],OUT[74:67],OUT[63:56]},  {OUT[52:45],OUT[41:34],OUT[30:23],OUT[19:12]} , 1'b1, OUT[7:5]  }, crc_calculated);
				
				if (OUT[97] != 1'b0)
				begin
					error_nxt = 1'b1;
					error_flag_nxt = ERR_DATA;
				end
					
				else if ( (OUT[87] | OUT[86] || OUT[76] || OUT[75] || OUT[65] || OUT[64]|| OUT[54] || OUT[53] || OUT[43] | OUT[42] || OUT[32] || OUT[31] || OUT[21] || OUT[20]) !=1'b0 )
				begin
					error_nxt = 1'b1;
					error_flag_nxt = ERR_DATA;	
				end
				
				else if ( OUT[10:8] !=3'b010 ) 
				begin
					error_nxt = 1'b1;
					error_flag_nxt = ERR_DATA;	
				end				
				
				else if ( (OUT[88] || OUT[77] || OUT[66] || OUT[55] || OUT[44] || OUT[33] || OUT[22] || OUT[11] || OUT[0])  !=1'b1   ) 
				begin
					error_nxt = 1'b1;
					error_flag_nxt = ERR_DATA;
				end
                
				else if (OUT[6] == 1'b1)
				begin
					error_nxt = 1'b1;
					error_flag_nxt = ERR_OP;
				end
                      
				else if (crc_calculated != OUT[4:1]) 
				begin
					error_nxt = 1'b1;
					error_flag_nxt = ERR_CRC;
				end
				
				else
				begin
					error_nxt = 1'b0;
					error_flag_nxt = ERR_NONE;   
					data_B_nxt = {OUT[96:89],OUT[85:78],OUT[74:67],OUT[63:56]};
					data_A_nxt = {OUT[52:45],OUT[41:34],OUT[30:23],OUT[19:12]};
					data_OP_nxt = OUT[7:5];	
					rx_ready_nxt = 1'b1;				
				end
			end

			DES_ERROR: 
			begin
				error_occured_nxt = 1'b1;
			end
		endcase	
	end

	//_____________TASKS_____________
	task crc4_68; 
		//x^4 + x^1 +1
		input  reg [67:0] data_in;
		output reg [3:0]  crc_result;
				reg [67:0] d;
				reg [3:0]  result;
		begin
			d = data_in;
			result[0] = d[66] ^ d[64] ^ d[63] ^ d[60] ^ d[56] ^ d[55] ^ d[54] ^ d[53] ^ d[51] ^ d[49] ^ d[48] ^ d[45] ^ d[41] ^ d[40] ^ d[39] ^ d[38] ^ d[36] ^ d[34] ^ d[33] ^ d[30] ^ d[26] ^ d[25] ^ d[24] ^ d[23] ^ d[21] ^ d[19] ^ d[18] ^ d[15] ^ d[11] ^ d[10] ^ d[9] ^ d[8] ^ d[6] ^ d[4] ^ d[3] ^ d[0];
			result[1] = d[67] ^ d[66] ^ d[65] ^ d[63] ^ d[61] ^ d[60] ^ d[57] ^ d[53] ^ d[52] ^ d[51] ^ d[50] ^ d[48] ^ d[46] ^ d[45] ^ d[42] ^ d[38] ^ d[37] ^ d[36] ^ d[35] ^ d[33] ^ d[31] ^ d[30] ^ d[27] ^ d[23] ^ d[22] ^ d[21] ^ d[20] ^ d[18] ^ d[16] ^ d[15] ^ d[12] ^ d[8] ^ d[7] ^ d[6] ^ d[5] ^ d[3] ^ d[1] ^ d[0];
			result[2] = d[67] ^ d[66] ^ d[64] ^ d[62] ^ d[61] ^ d[58] ^ d[54] ^ d[53] ^ d[52] ^ d[51] ^ d[49] ^ d[47] ^ d[46] ^ d[43] ^ d[39] ^ d[38] ^ d[37] ^ d[36] ^ d[34] ^ d[32] ^ d[31] ^ d[28] ^ d[24] ^ d[23] ^ d[22] ^ d[21] ^ d[19] ^ d[17] ^ d[16] ^ d[13] ^ d[9] ^ d[8] ^ d[7] ^ d[6] ^ d[4] ^ d[2] ^ d[1];
			result[3] = d[67] ^ d[65] ^ d[63] ^ d[62] ^ d[59] ^ d[55] ^ d[54] ^ d[53] ^ d[52] ^ d[50] ^ d[48] ^ d[47] ^ d[44] ^ d[40] ^ d[39] ^ d[38] ^ d[37] ^ d[35] ^ d[33] ^ d[32] ^ d[29] ^ d[25] ^ d[24] ^ d[23] ^ d[22] ^ d[20] ^ d[18] ^ d[17] ^ d[14] ^ d[10] ^ d[9] ^ d[8] ^ d[7] ^ d[5] ^ d[3] ^ d[2];
			crc_result = result;
		end
	endtask
    
endmodule
