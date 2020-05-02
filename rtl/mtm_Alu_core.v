/******************************************************************************
 * (C) Copyright 2019 AGH UST All Rights Reserved
 *
 * MODULE:    mtm_Alu_core
 * PROJECT:   PPCU_VLSI
 * AUTHORS:   Mateusz Krzyworzeka, Jakub Filipiak
 * DATE:      21.03.2020
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
 
 module mtm_Alu_core (
	input  wire        clk,
	input  wire        rst_n,
	input  wire        rx_dt_ready,
	input  wire [31:0] data_A,    
	input  wire [31:0] data_B,    
	input  wire [2:0]  data_OP,  
	
	output reg  [31:0] data_C, 
	output reg  [3:0]  data_flag, 
	output reg  [2:0]  data_crc, 
	output reg         tx_dt_ready
 );
	//__________CORE_STATES__________	
	localparam CORE_IDLE      = 1'b0;
	localparam CORE_CALC	  = 1'b1;

	//__________ALU_OPCODES__________	
	localparam ALU_AND		= 3'b000;
	localparam ALU_OR		= 3'b001;
	localparam ALU_ADD		= 3'b100;
	localparam ALU_SUB		= 3'b101;

	//______________REGS_____________	
	reg [31:0] data_C_nxt;
	reg [3:0]  data_flag_nxt;
	reg [2:0]  data_crc_nxt;
	reg 	   tx_dt_ready_nxt;
	reg        state, state_nxt;
	
	//________SEQUENTIAL_LOGIC_______	
	always @ (posedge clk) 
	begin
 	    if(!rst_n) 
 	 	begin	
 	 	    state 		 <= CORE_IDLE;
 	 	    data_C       <= 32'b0;
 	 	    data_flag    <= 4'b0;
 	 	    data_crc     <= 3'b0;
 	 	    tx_dt_ready  <= 1'b0;
 	 	end
 	    else 
 	 	begin
 	 	    state		 <= state_nxt;
 	 	    data_C  	 <= data_C_nxt;
 	 	    data_flag	 <= data_flag_nxt;
 	 	    data_crc	 <= data_crc_nxt;
 	 	    tx_dt_ready  <= tx_dt_ready_nxt;
 	 	end
 	end

	//________NEXT_STATE_LOGIC_______	
	always @*
    begin
        casex({state,           rx_dt_ready })
        	 ({CORE_IDLE,       1'b1        }): state_nxt = CORE_CALC;
        	 ({CORE_IDLE,       1'b0        }): state_nxt = CORE_IDLE;
        	 ({CORE_CALC,       1'bx        }): state_nxt = CORE_IDLE;
        	 default: 				            state_nxt = state;
        endcase
    end  


	//______COMBINATIONAL_LOGIC______	

	always @* 
	begin
	   data_C_nxt		    = data_C;
       data_flag_nxt        = data_flag;
       data_crc_nxt         = data_crc;
       tx_dt_ready_nxt      = tx_dt_ready;	
       	
	   case(state_nxt)
	       CORE_IDLE: 
	 	   begin
	 	       data_C_nxt		    = 32'b0;
	 		   data_flag_nxt	    = 4'b0;
	 		   data_crc_nxt		    = 3'b0;
	 		   tx_dt_ready_nxt	    = 1'b0;
	 	   end
	 	   
	 	   CORE_CALC: 
	 	   begin
	 	       calculate(data_A, data_B, data_OP, data_flag_nxt, data_C_nxt);
               crc3_37({data_C_nxt, 1'b0, data_flag_nxt}, data_crc_nxt);
	 		   tx_dt_ready_nxt	= 1'b1;
	 	   end
	   endcase
    end

	//_____________TASKS_____________	
   
	task calculate( input  [31:0] A, B, input  [2:0]  OP, output [3:0]  Flags, output [31:0] C);
         reg carry, overflow, negative, zero;
         begin    
             case(OP)
             ALU_AND: 
                 begin
                     C = A & B;
                     carry = 1'b0;
                     overflow = 1'b0;
                     zero=~(|C);
                     negative=C[31];
                 end
             ALU_OR:
                 begin
                     C = A | B;
                     carry = 1'b0;
                     overflow = 1'b0;
                     zero=~(|C);
                     negative=C[31];
                 end
             ALU_ADD: 
                 begin
                     {carry, C} = {1'b0, A} + {1'b0, B};
                     overflow = ((B[31] ^ A[31] ^ C[31]) ^ carry);
                     zero=~(|C);
                     negative=C[31];
                 end
             ALU_SUB: 
                 begin
                     {carry, C} = {1'b0, A} - {1'b0, B};
                     overflow = ((B[31] ^ A[31] ^ C[31]) ^ carry);
                     zero=~(|C);
                     negative=C[31];
                 end
             endcase
             Flags = {carry, overflow, zero, negative};
         end
	endtask
	//___________________________________________________________ 
	    	
    task crc3_37;
       //x^3 + x^1 +1
        input  reg [36:0] data_in;
        output reg [2:0]  crc3_result;
               reg [36:0] d;
               reg [2:0]  result;
        begin
            d = data_in;
            result[0] = d[35] ^ d[32] ^ d[31] ^ d[30] ^ d[28] ^ d[25] ^ d[24] ^ d[23] ^ d[21] ^ d[18] ^ d[17] ^ d[16] ^ d[14] ^ d[11] ^ d[10] ^ d[9] ^ d[7] ^ d[4] ^ d[3] ^ d[2] ^ d[0];
            result[1] = d[36] ^ d[35] ^ d[33] ^ d[30] ^ d[29] ^ d[28] ^ d[26] ^ d[23] ^ d[22] ^ d[21] ^ d[19] ^ d[16] ^ d[15] ^ d[14] ^ d[12] ^ d[9] ^ d[8] ^ d[7] ^ d[5] ^ d[2] ^ d[1] ^ d[0];
            result[2] = d[36] ^ d[34] ^ d[31] ^ d[30] ^ d[29] ^ d[27] ^ d[24] ^ d[23] ^ d[22] ^ d[20] ^ d[17] ^ d[16] ^ d[15] ^ d[13] ^ d[10] ^ d[9] ^ d[8] ^ d[6] ^ d[3] ^ d[2] ^ d[1];
            crc3_result = result;
        end
    endtask
	
 endmodule
 
