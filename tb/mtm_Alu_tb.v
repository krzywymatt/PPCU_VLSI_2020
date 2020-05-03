/******************************************************************************
 * (C) Copyright 2019 AGH UST All Rights Reserved
 *
 * MODULE:    mtm_Alu_tb
 * PROJECT:   PPCU_VLSI
 * AUTHORS:   Mateusz Krzyworzeka, Jakub Filipiak
 * DATE:      28.04.2020
 * ------------------------------------------------------------------------------
 * This module (TB) provides test patterns for the ALU, reads data from the ALU and 
 * verifies if the operation result is correct.
 * 
 * The TB must include:
 * - task send_byte to send a CMD or CTL command to the ALU
 * - task send_calculation_data that will send 9 bytes to the ALU for given
 *   operands and operation
 * - procedural block for capturing the input data from the ALU
 * - task compare to compare the result from the ALU and the expected data.
 * 
 * The test vectors must provide at least:
 * - sending max (0xFFFF) and min (0) data with all the ALU operations (AND OR, ADD,SUB)
 * - sending 1000 random valid data
 * - sending invalid data (wrong number of DATA packets before CTL packet)
 * - sending data with CRC error
 * 
 * The testbench should print final PASS/FAIL text information.
 */
`timescale 1ns/1ps

module mtm_Alu_tb (
    output reg clk,
    output reg rst_n,
    output reg sin,
    input  wire sout
    );

	//_________________ALU_OPCODES_________________	
	localparam AND		  = 3'b000;
	localparam OR		  = 3'b001;
	localparam ADD		  = 3'b100;
	localparam SUB		  = 3'b101;
	//___________________PARAMS____________________
	localparam TYPE_DATA  = 1'b0;
    localparam TYPE_CMD   = 1'b1;
	localparam PERIOD     = 4'd10;
	localparam ERR_DATA	  = 6'b100100;
    localparam ERR_CRC    = 6'b010010;
    localparam ERR_OP     = 6'b001001;
	//____________________REGS_____________________	
    reg [54:0] received_data, CMD;
	reg [10:0] received_ctl,  CTL;
    reg [31:0] data_A, data_B, min, max;
	reg [2:0]  data_OP;
	reg [3:0]  data_crc;
	reg [7:0]  sample_byte, sample_ctl;
    
    always
    begin
        #(PERIOD/2) clk <= ~clk;
	end

    initial 
	begin
	    clk   = 1'b0;
        rst_n = 1'b1;
        sin   = 1'b1;

	    test_random_data;
	    test_corners;
	    test_invalid_data;
	    test_wrong_op;
	    test_wrong_crc;
	    $finish;
    end

    
    //___________________TASKS____________________________
    
    task send_byte( input frame_type, input [7:0] data );
        begin
			clk = 1'b0;
			#PERIOD sin = 1'b0;
            #PERIOD sin = frame_type;  
            #PERIOD sin = data[7];      
            #PERIOD sin = data[6];      
            #PERIOD sin = data[5];      
            #PERIOD sin = data[4];      
            #PERIOD sin = data[3];      
            #PERIOD sin = data[2];      
            #PERIOD sin = data[1];      
            #PERIOD sin = data[0];      
            #PERIOD sin = 1'b1;        
        end
    endtask	
    //_____________________________________________________________________
    
    task send_calculation_data ( input [31:0] A, B, input [2:0] OP, input [3:0] CRC );    
	begin
		send_byte(TYPE_DATA, B[31:24]);
		send_byte(TYPE_DATA, B[23:16]);
		send_byte(TYPE_DATA, B[15:8]);
		send_byte(TYPE_DATA, B[7:0]);
		send_byte(TYPE_DATA, A[31:24]);
		send_byte(TYPE_DATA, A[23:16]);
		send_byte(TYPE_DATA, A[15:8]);
		send_byte(TYPE_DATA, A[7:0]);
		send_byte(TYPE_CMD, {1'b0, OP, CRC});
	end
    endtask
    //_____________________________________________________________________	
	
    task compare ( input [54:0] expected_data );
        begin
            received_data <= 0;
           @(negedge sout);
            repeat(55)
            begin
                @(negedge clk);
                received_data = {received_data, sout};
            end
            
            if(received_data[54:0] == expected_data[54:0]) 
            begin    
                 $display(" PASS: DATA received are correct : %b", received_data);
            end
            else 
            begin
                 $display(" FAIL: DATA received: %b; expected: %b", received_data, expected_data);
            end
        end  
    endtask
	//_____________________________________________________________________
	
	task compare_ctl ( input [10:0] expected_ctl );
        begin
            received_ctl <= 0;
           @(negedge sout);
            repeat(11)
            begin
                @(negedge clk);
                received_ctl = {received_ctl, sout};
            end
            
            if(received_ctl[10:0] == expected_ctl[10:0]) 
            begin    
                 $display(" PASS: CTL received is correct : %b", received_ctl);
            end
            else 
            begin
                 $display(" FAIL: CTL received: %b; expected: %b", received_ctl, expected_ctl);
            end
        end  
    endtask
	
	
    //_____________________________________________________________________	
    
    task generate_random ( output [31:0] A, B );
        begin
            A=$random;
            B=$random;
        end
    endtask 
    //_____________________________________________________________________	

    task calc_crc_send_compare ( input [2:0] OP, input [31:0] A, B );
        reg [54:0] Cout;
        reg [3:0] CRC;
        begin
            calculate(A, B, OP, Cout);
            crc4_68({B, A ,1'b1, OP}, CRC);
            send_calculation_data(A, B, OP, CRC);
            compare(Cout);
        end
    endtask  
   
    //_____________________________________________________________________
    	
    task reset_all();
        begin
            @(posedge clk);
            rst_n <= 0;
            received_data <= 0;
            @(posedge clk);
            rst_n <= 1;
        end
    endtask
              
    //_____________________________________________________________________	
    //______________________________TESTS__________________________________
    //_____________________________________________________________________	     
    
    //______________________________TEST1__________________________________ 
    task test_random_data();
    begin
	reset_all;
        begin 	
	        $display("\n TEST1.1: random numbers AND ");
		    repeat(250)
		    begin
		        data_OP = AND;
		        generate_random(data_A, data_B);
			    calc_crc_send_compare(data_OP, data_A, data_B);
		    end
		
			$display("\n TEST1.2: random numbers OR");
			repeat(250)
			begin
				data_OP = OR;
				generate_random(data_A, data_B);
				calc_crc_send_compare(data_OP, data_A, data_B);
			end
		
			$display("\n TEST1.3: random numbers ADD");
			repeat(250)
			begin
				data_OP = ADD;
				generate_random(data_A, data_B);
				calc_crc_send_compare(data_OP, data_A, data_B);
		    end
		
		    $display("\n TEST1.4: random numbers SUB");
		    repeat(250)
		    begin
				data_OP = SUB;
				generate_random(data_A, data_B);
				calc_crc_send_compare(data_OP, data_A, data_B);
			end
		end
	end
	endtask
	
    //______________________________TEST2__________________________________ 	
	task test_corners();
	begin
	reset_all;	
		begin
			min = 32'h00000000;
			max = 32'hFFFFFFFF;
			$display("\n TEST2:corners "); 
			$display(" AND ");   
			data_OP = AND;
			calc_crc_send_compare(data_OP,min,max);
			calc_crc_send_compare(data_OP,max,min);
			calc_crc_send_compare(data_OP,max,max);
			calc_crc_send_compare(data_OP,min,min);
			$display(" OR ");
			data_OP = OR;
			calc_crc_send_compare(data_OP,min,max);
			calc_crc_send_compare(data_OP,max,min);
			calc_crc_send_compare(data_OP,max,max);
			calc_crc_send_compare(data_OP,min,min);
			$display(" ADD ");
			data_OP = ADD;
			calc_crc_send_compare(data_OP,min,max);
			calc_crc_send_compare(data_OP,max,min);
			calc_crc_send_compare(data_OP,max,max);
			calc_crc_send_compare(data_OP,min,min);
			$display(" SUB ");
			data_OP = SUB;
			calc_crc_send_compare(data_OP,min,max);
			calc_crc_send_compare(data_OP,max,min);
			calc_crc_send_compare(data_OP,max,max);
			calc_crc_send_compare(data_OP,min,min);
    	end
    end
    endtask
	
    //______________________________TEST3__________________________________ 	
    task test_invalid_data();
    begin
    reset_all;
        begin
            
		sample_byte = 8'hAA;
		sample_ctl  = 8'h00;
		CTL ={3'b011, ERR_DATA, 2'b11};
        
		$display("TEST3: wrong number of packets");
		$display(" 1 data frame:");
		repeat(1) send_byte(TYPE_DATA, sample_byte);
		send_byte(TYPE_CMD, sample_ctl);
		compare_ctl(CTL);
        
		$display(" 2 data frames:");
		repeat(2) send_byte(TYPE_DATA, sample_byte);
		send_byte(TYPE_CMD, sample_ctl);
		compare_ctl(CTL);
        
		$display(" 3 data frames:");
		repeat(3) send_byte(TYPE_DATA, sample_byte);
		send_byte(TYPE_CMD, sample_ctl);
		compare_ctl(CTL);
        
		$display(" 4 data frames:");
		repeat(4) send_byte(TYPE_DATA, sample_byte);
		send_byte(TYPE_CMD, sample_ctl);
		compare_ctl(CTL);
        
		$display(" 5 data frames:");
		repeat(5) send_byte(TYPE_DATA, sample_byte);
		send_byte(TYPE_CMD, sample_ctl);
		compare_ctl(CTL);
        
		$display(" 6 data frames:");
		repeat(6) send_byte(TYPE_DATA, sample_byte);
		send_byte(TYPE_CMD, sample_ctl);
		compare_ctl(CTL);
        
		$display(" 7 data frames:");
		repeat(7) send_byte(TYPE_DATA, sample_byte);
		send_byte(TYPE_CMD, sample_ctl);
		compare_ctl(CTL);
        
		$display(" 9 data frames:");
		repeat(9) send_byte(TYPE_DATA, sample_byte);
		compare_ctl(CTL);
        
		end
	end
	endtask
	
	//______________________________TEST4__________________________________ 		
	task test_wrong_op();
	begin
	reset_all;
		begin
        
		data_A = {4{8'hAA}};
		data_B = {4{8'hAA}};
		data_OP = 3'b010;
		crc4_68({data_B, data_A, 1'b1, data_OP}, data_crc);
		CTL ={3'b011, ERR_OP, 2'b11};
    	
		$display("TEST4:Wrong OP");
		send_calculation_data(data_A, data_B, data_OP, data_crc);
		compare_ctl(CTL);
	
		end
	end
	endtask
	
	//______________________________TEST5__________________________________ 		
	task test_wrong_crc();
	begin
	reset_all;	
		begin
	        
		data_A = {4{8'hAA}};															
		data_B = {4{8'hAA}};															
		data_OP = AND;																		
		data_crc = 4'b0000;							
		CTL ={3'b011, ERR_CRC ,2'b11};

		$display("\TEST5:Wrong CRC");
		send_calculation_data(data_A, data_B, data_OP, data_crc);
		compare_ctl(CTL);
	    
		end
	end
	endtask    
    
    //_____________________________________________________________________	
	task calculate( input  [31:0] A, B, input  [2:0]  OP, output [54:0] Cout );
		reg [31:0] C;
		reg [3:0] calc_flags;
		reg [2:0] calc_CRC3;
		reg carry, overflow, negative, zero;
		begin
			case(OP)
			AND: 
				begin
					C = A & B;
					carry = 1'b0;
					overflow = 1'b0;
					zero=~(|C);
					negative=C[31];
				end
			OR: 
				begin
					C = A | B;
					carry = 1'b0;
					overflow = 1'b0;
					zero=~(|C);
					negative=C[31];
				end
			ADD: 
				begin
					{carry, C} = {1'b0, A} + {1'b0, B};
					overflow = ((B[31] ^ A[31] ^ C[31]) ^ carry);
					zero=~(|C);
					negative=C[31];
				end        
			SUB: 
				begin
					{carry, C} = {1'b0, A} - {1'b0, B};
					overflow = ((B[31] ^ A[31] ^ C[31]) ^ carry);
					zero=~(|C);
					negative=C[31];
				end
			endcase

			calc_flags = {carry, overflow, zero, negative};
			crc3_37({C, 1'b0, calc_flags}, calc_CRC3);
			Cout={2'b00,  C[31:24], 1'b1,      
				  2'b00,  C[23:16], 1'b1,     
                  2'b00,  C[15:8],  1'b1,      
                  2'b00,  C[7:0],   1'b1,    
                  3'b010, calc_flags, calc_CRC3, 1'b1 };
		end
	endtask

    //_____________________________________________________________________	
    //_______________________________CRC_TASKS_____________________________
    //_____________________________________________________________________		

	task crc3_37;
	   //x^3 + x^1 + 1
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
	
	
	task crc4_68;
	   //x^4 + x^1 +1
		input  reg [67:0] data_in;
		output reg [3:0]  crc4_result;
               reg [67:0] d;
               reg [3:0]  result;
		begin
			d = data_in;
			result[0] = d[66] ^ d[64] ^ d[63] ^ d[60] ^ d[56] ^ d[55] ^ d[54] ^ d[53] ^ d[51] ^ d[49] ^ d[48] ^ d[45] ^ d[41] ^ d[40] ^ d[39] ^ d[38] ^ d[36] ^ d[34] ^ d[33] ^ d[30] ^ d[26] ^ d[25] ^ d[24] ^ d[23] ^ d[21] ^ d[19] ^ d[18] ^ d[15] ^ d[11] ^ d[10] ^ d[9] ^ d[8] ^ d[6] ^ d[4] ^ d[3] ^ d[0];
			result[1] = d[67] ^ d[66] ^ d[65] ^ d[63] ^ d[61] ^ d[60] ^ d[57] ^ d[53] ^ d[52] ^ d[51] ^ d[50] ^ d[48] ^ d[46] ^ d[45] ^ d[42] ^ d[38] ^ d[37] ^ d[36] ^ d[35] ^ d[33] ^ d[31] ^ d[30] ^ d[27] ^ d[23] ^ d[22] ^ d[21] ^ d[20] ^ d[18] ^ d[16] ^ d[15] ^ d[12] ^ d[8] ^ d[7] ^ d[6] ^ d[5] ^ d[3] ^ d[1] ^ d[0];
			result[2] = d[67] ^ d[66] ^ d[64] ^ d[62] ^ d[61] ^ d[58] ^ d[54] ^ d[53] ^ d[52] ^ d[51] ^ d[49] ^ d[47] ^ d[46] ^ d[43] ^ d[39] ^ d[38] ^ d[37] ^ d[36] ^ d[34] ^ d[32] ^ d[31] ^ d[28] ^ d[24] ^ d[23] ^ d[22] ^ d[21] ^ d[19] ^ d[17] ^ d[16] ^ d[13] ^ d[9] ^ d[8] ^ d[7] ^ d[6] ^ d[4] ^ d[2] ^ d[1];
			result[3] = d[67] ^ d[65] ^ d[63] ^ d[62] ^ d[59] ^ d[55] ^ d[54] ^ d[53] ^ d[52] ^ d[50] ^ d[48] ^ d[47] ^ d[44] ^ d[40] ^ d[39] ^ d[38] ^ d[37] ^ d[35] ^ d[33] ^ d[32] ^ d[29] ^ d[25] ^ d[24] ^ d[23] ^ d[22] ^ d[20] ^ d[18] ^ d[17] ^ d[14] ^ d[10] ^ d[9] ^ d[8] ^ d[7] ^ d[5] ^ d[3] ^ d[2];
			crc4_result = result;
		end
    endtask
	
endmodule
