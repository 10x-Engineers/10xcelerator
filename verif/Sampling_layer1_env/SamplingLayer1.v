`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:56:35 03/25/2018 
// Design Name: 
// Module Name:    SamplingLayer1 
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
module SamplingLayer1(
	input Clock,
	input Input_Valid,
	input Input_Finish,
	input Input_Reset,
	input [15:0] Input_Pixel_1,
	input [15:0] Input_Pixel_2,
	input [15:0] Input_Pixel_3,
	input [15:0] Input_Pixel_4,
	input [15:0] Input_Pixel_5,
	input [15:0] Input_Pixel_6,
	output [15:0] Output_Pixel_1,
	output [15:0] Output_Pixel_2,
	output [15:0] Output_Pixel_3,
	output [15:0] Output_Pixel_4,
	output [15:0] Output_Pixel_5,
	output [15:0] Output_Pixel_6,
	output Output_Valid,
	output Output_Finish
   );
	
	wire Output_Valid_1;
	wire Output_Valid_2;
	wire Output_Valid_3;
	wire Output_Valid_4;
	wire Output_Valid_5;
	wire Output_Valid_6;
	wire Output_Finish_1;
	wire Output_Finish_2;
	wire Output_Finish_3;
	wire Output_Finish_4;
	wire Output_Finish_5;
	wire Output_Finish_6;
	/*
	wire unsigned Input_Pixel_1;
	wire unsigned Input_Pixel_2;
	wire unsigned Input_Pixel_3;
	wire unsigned Input_Pixel_4;
	wire unsigned Input_Pixel_5;
	wire unsigned Input_Pixel_6;
	wire unsigned Output_Pixel_1;
	wire unsigned Output_Pixel_2;
	wire unsigned Output_Pixel_3;
	wire unsigned Output_Pixel_4;
	wire unsigned Output_Pixel_5;
	wire unsigned Output_Pixel_6;
	*/
	
	assign Output_Valid = Output_Valid_1 || Output_Valid_2 || Output_Valid_3 || Output_Valid_4 || Output_Valid_5 || Output_Valid_6;
	assign Output_Finish = Output_Finish_1 || Output_Finish_2 || Output_Finish_3 || Output_Finish_4 || Output_Finish_5 || Output_Finish_6;
	SamplingModule1 Kernel1(.Clock(Clock),
									.Input_Valid(Input_Valid),
									.Input_Finish(Input_Finish),
									.Input_Reset(Input_Reset),
									.Input_Pixel(Input_Pixel_1),
									.Output_Pixel(Output_Pixel_1),
									.Output_Valid(Output_Valid_1),
									.Output_Finish(Output_Finish_1)
									);
 
	SamplingModule1 Kernel2(.Clock(Clock),
									.Input_Valid(Input_Valid),
									.Input_Finish(Input_Finish),
									.Input_Reset(Input_Reset),
									.Input_Pixel(Input_Pixel_2),
									.Output_Pixel(Output_Pixel_2),
									.Output_Valid(Output_Valid_2),
									.Output_Finish(Output_Finish_2)
									);
	SamplingModule1 Kernel3(.Clock(Clock),
									.Input_Valid(Input_Valid),
									.Input_Finish(Input_Finish),
									.Input_Reset(Input_Reset),
									.Input_Pixel(Input_Pixel_3),
									.Output_Pixel(Output_Pixel_3),
									.Output_Valid(Output_Valid_3),
									.Output_Finish(Output_Finish_3)
									);
	SamplingModule1 Kernel4(.Clock(Clock),
									.Input_Valid(Input_Valid),
									.Input_Finish(Input_Finish),
									.Input_Reset(Input_Reset),
									.Input_Pixel(Input_Pixel_4),
									.Output_Pixel(Output_Pixel_4),
									.Output_Valid(Output_Valid_4),
									.Output_Finish(Output_Finish_4));
	SamplingModule1 Kernel5(.Clock(Clock),
									.Input_Valid(Input_Valid),
									.Input_Finish(Input_Finish),
									.Input_Reset(Input_Reset),
									.Input_Pixel(Input_Pixel_5),
									.Output_Pixel(Output_Pixel_5),
									.Output_Valid(Output_Valid_5),
									.Output_Finish(Output_Finish_5)
									);
	SamplingModule1 Kernel6(.Clock(Clock),
									.Input_Valid(Input_Valid),
									.Input_Finish(Input_Finish),
									.Input_Reset(Input_Reset),
									.Input_Pixel(Input_Pixel_6),
									.Output_Pixel(Output_Pixel_6),
									.Output_Valid(Output_Valid_6),
									.Output_Finish(Output_Finish_6)
									);

endmodule
