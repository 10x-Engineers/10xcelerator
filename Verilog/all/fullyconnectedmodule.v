`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:15:27 08/02/2018 
// Design Name: 
// Module Name:    fullyconnectedlayer 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fullyconnectedmodule#(parameter fcl_file="FCL_1.hex")
	(
   input Clock,
	input [15:0] Input_Pixel,
	input Input_Valid,
	input Input_Finish,
	input Input_Reset,
	output reg [31:0] Output_0,
	output reg [31:0] Output_1,
	output reg [31:0] Output_2,
	output reg [31:0] Output_3,
	output reg [31:0] Output_4,
	output reg [31:0] Output_5,
	output reg [31:0] Output_6,
	output reg [31:0] Output_7,
	output reg [31:0] Output_8,
	output reg [31:0] Output_9,
	output reg Output_Valid,
	output reg Output_Finish
	);
	//module registers
	reg [31:0] Input_Buffer[0:9];
	
	reg [09:0] Input_Counter;
	
	reg Flag_Input_Buffer_Filled;
	reg Flag_Output_Available;
	//loop's variable
	integer i;
	
	reg signed [31:0] weights[0:159];
	
	initial begin
	
	$readmemh(fcl_file,weights);
	
	//output registers
		Output_Valid <= 'b0;
		Output_Finish <='b0;
		Output_1 <= 0;
	//internal flags

		Flag_Input_Buffer_Filled <= 'b0;
	//internel registers
		for (i=0;i<10;i=i+1)
		begin
			Input_Buffer[i] <= 'b0;
		end


		Input_Counter <= 'b0;

	end
	

	
	//Rear Part of Module - Input
	always @ (posedge Clock)
	begin
		if (Input_Valid == 1 && Input_Reset == 0 && Flag_Input_Buffer_Filled == 0 && Input_Finish == 0)
		begin
				if (Input_Counter == 15)
			begin
				Output_0 <= Input_Buffer[0]+ Input_Pixel*weights[Input_Counter];
				Output_1 <= Input_Buffer[1]+ Input_Pixel*weights[Input_Counter +16*1];
				Output_2 <= Input_Buffer[2]+ Input_Pixel*weights[Input_Counter +16*2];
				Output_3 <= Input_Buffer[3]+ Input_Pixel*weights[Input_Counter +16*3];
				Output_4 <= Input_Buffer[4]+ Input_Pixel*weights[Input_Counter +16*4];
				Output_5 <= Input_Buffer[5]+ Input_Pixel*weights[Input_Counter +16*5];
				Output_6 <= Input_Buffer[6]+ Input_Pixel*weights[Input_Counter +16*6];
				Output_7 <= Input_Buffer[7]+ Input_Pixel*weights[Input_Counter +16*7];
				Output_8 <= Input_Buffer[8]+ Input_Pixel*weights[Input_Counter +16*8];
				Output_9 <= Input_Buffer[9]+ Input_Pixel*weights[Input_Counter +16*9];
				Output_Valid <= 'b1;
				Output_Finish <='b1;
				Flag_Input_Buffer_Filled <= 'b1;
			end
			else if (Input_Counter < 15)
			begin
			
				Input_Buffer[0] <= Input_Buffer[0]+ Input_Pixel*weights[Input_Counter +16*0];
				Input_Buffer[1] <= Input_Buffer[1]+ Input_Pixel*weights[Input_Counter +16*1];
				Input_Buffer[2] <= Input_Buffer[2]+ Input_Pixel*weights[Input_Counter +16*2];
				Input_Buffer[3] <= Input_Buffer[3]+ Input_Pixel*weights[Input_Counter +16*3];
				Input_Buffer[4] <= Input_Buffer[4]+ Input_Pixel*weights[Input_Counter +16*4];
				Input_Buffer[5] <= Input_Buffer[5]+ Input_Pixel*weights[Input_Counter +16*5];
				Input_Buffer[6] <= Input_Buffer[6]+ Input_Pixel*weights[Input_Counter +16*6];
				Input_Buffer[7] <= Input_Buffer[7]+ Input_Pixel*weights[Input_Counter +16*7];
				Input_Buffer[8] <= Input_Buffer[8]+ Input_Pixel*weights[Input_Counter +16*8];
				Input_Buffer[9] <= Input_Buffer[9]+ Input_Pixel*weights[Input_Counter +16*9];
				Input_Counter <= Input_Counter + 1;
			end
		end

		if (Input_Reset == 1)
		begin
		//output registers
			Output_Valid <= 'b0;
			Output_Finish <='b0;
			Output_1 <= 0;
		//internal flags
			Flag_Input_Buffer_Filled <= 'b0;
		//internel registers
		for (i=0;i<10;i=i+1)
			begin
				Input_Buffer[i] <= 'b0;
			end

				Input_Counter <= 'b0;
		end
		

		
		
		
	end
endmodule

