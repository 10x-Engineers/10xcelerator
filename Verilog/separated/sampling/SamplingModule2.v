`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:25:06 07/26/2018 
// Design Name: 
// Module Name:    SamplingModule2 
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
module SamplingModule2(
	input Clock,
	input [15:0] Input_Pixel,
	input Input_Valid,
	input Input_Finish,
	input Input_Reset,
	output reg [15:0] Output_Pixel,
	output reg Output_Valid,
	output reg Output_Finish,
	output reg [15:0] Watch
	);
	//module registers
	reg [15:0] Input_Buffer [63:0];
	reg [15:0] Latch_Buffer [63:0];
	reg [06:0] Input_Counter;
	reg [04:0] Output_Counter;
	reg Flag_Input_Buffer_Filled;
	reg Flag_Output_Available;
	//loop's variable
	integer i;
	
	initial begin
	//output registers
		Output_Valid <= 'b0;
		Output_Finish <='b0;
		Output_Pixel <= 'b0;
	//internal flags
		Flag_Output_Available <= 'b0;
		Flag_Input_Buffer_Filled <= 'b0;
	//internel registers
		for (i=0;i<64;i=i+1)
		begin
			Input_Buffer[i] <= 'b0;
		end
		for (i=0;i<64;i=i+1)
		begin
			Latch_Buffer[i] <= 'b0;
		end
		Watch <= 0;
		Input_Counter <= 'b0;
		Output_Counter <= 'b0;
	end
	

	
	//Rear Part of Module - Input
	always @ (posedge Clock)
	begin
		if (Input_Valid == 1 && Input_Reset == 0 )//&& Flag_Input_Buffer_Filled == 0 && Flag_Output_Available == 0 && Input_Finish == 0)
		begin
			if (Input_Counter == 63)
			begin
				Input_Buffer[Input_Counter] <= Input_Pixel;
				Flag_Input_Buffer_Filled <= 'b1;
			end
			else if (Input_Counter < 63)
			begin
				Input_Buffer[Input_Counter] <= Input_Pixel;
				Input_Counter <= Input_Counter + 1;
			end
		end

		if (Input_Reset == 1)
		begin
		//output registers
			Output_Valid <= 'b0;
			Output_Finish <='b0;
			Output_Pixel <= 'b0;
		//internal flags
			Flag_Output_Available <= 'b0;
			Flag_Input_Buffer_Filled <= 'b0;
		//internel registers
			for (i=0;i<64;i=i+1)
			begin
				Input_Buffer[i] <= 'b0;
			end
			for (i=0;i<64;i=i+1)
			begin
				Latch_Buffer[i] <= 'b0;
			end
			Watch <= 0;
			Input_Counter <= 'b0;
			Output_Counter <= 'b0;
		end
		
		if (Flag_Input_Buffer_Filled == 1 && Flag_Output_Available == 0)
		begin
			for (i=0;i<64;i=i+1)
			begin
				Latch_Buffer[i] <= Input_Buffer[i];
			end
			Flag_Output_Available <= 1;
		end
		
		if (Flag_Output_Available)
		begin
			Flag_Input_Buffer_Filled <= 0;
			Output_Valid <= 1'b1;
			if (Output_Counter == 16)
			begin
				Flag_Output_Available <= 'b0;
				Output_Counter <= 'd0;
				Output_Valid <= 'b0;
				Output_Finish <= 'd1;
			end
			else if (Output_Counter < 16)
			begin
				Output_Counter <= Output_Counter + 1;
			end
			case(Output_Counter)
				//line# 1
				'd000: Output_Pixel <= (Latch_Buffer[00] + Latch_Buffer[01] + Latch_Buffer[08] + Latch_Buffer[09]) /4;
				'd001: Output_Pixel <= (Latch_Buffer[02] + Latch_Buffer[03] + Latch_Buffer[10] + Latch_Buffer[11]) /4;
				'd002: Output_Pixel <= (Latch_Buffer[04] + Latch_Buffer[05] + Latch_Buffer[12] + Latch_Buffer[13]) /4;
				'd003: Output_Pixel <= (Latch_Buffer[06] + Latch_Buffer[07] + Latch_Buffer[14] + Latch_Buffer[15]) /4;
				//line# 2
				'd004: Output_Pixel <= (Latch_Buffer[16] + Latch_Buffer[17] + Latch_Buffer[24] + Latch_Buffer[25]) /4;
				'd005: Output_Pixel <= (Latch_Buffer[18] + Latch_Buffer[19] + Latch_Buffer[26] + Latch_Buffer[27]) /4;
				'd006: Output_Pixel <= (Latch_Buffer[20] + Latch_Buffer[21] + Latch_Buffer[28] + Latch_Buffer[29]) /4;
				'd007: Output_Pixel <= (Latch_Buffer[22] + Latch_Buffer[23] + Latch_Buffer[30] + Latch_Buffer[31]) /4;
				//line# 3
				'd008: Output_Pixel <= (Latch_Buffer[32] + Latch_Buffer[33] + Latch_Buffer[40] + Latch_Buffer[41]) /4;
				'd009: Output_Pixel <= (Latch_Buffer[34] + Latch_Buffer[35] + Latch_Buffer[42] + Latch_Buffer[43]) /4;
				'd010: Output_Pixel <= (Latch_Buffer[36] + Latch_Buffer[37] + Latch_Buffer[44] + Latch_Buffer[45]) /4;
				'd011: Output_Pixel <= (Latch_Buffer[38] + Latch_Buffer[39] + Latch_Buffer[46] + Latch_Buffer[47]) /4;
				//line# 4
				'd012: Output_Pixel <= (Latch_Buffer[48] + Latch_Buffer[49] + Latch_Buffer[56] + Latch_Buffer[57]) /4;
				'd013: Output_Pixel <= (Latch_Buffer[50] + Latch_Buffer[51] + Latch_Buffer[58] + Latch_Buffer[59]) /4;
				'd014: Output_Pixel <= (Latch_Buffer[52] + Latch_Buffer[53] + Latch_Buffer[60] + Latch_Buffer[61]) /4;
				'd015: Output_Pixel <= (Latch_Buffer[54] + Latch_Buffer[55] + Latch_Buffer[62] + Latch_Buffer[63]) /4;
				endcase
		end//FLAG_INPUT_AVAILABLE-ENDs
	end//Clock-ENDs
endmodule
