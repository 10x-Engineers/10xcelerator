`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:21 07/26/2018 
// Design Name: 
// Module Name:    sampling_layer_two 
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
module SamplingLayer2(
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
	input [15:0] Input_Pixel_7,
	input [15:0] Input_Pixel_8,
	input [15:0] Input_Pixel_9,
	input [15:0] Input_Pixel_10,
	input [15:0] Input_Pixel_11,
	input [15:0] Input_Pixel_12,
	
	output [15:0] Output_Pixel_1,
	output [15:0] Output_Pixel_2,
	output [15:0] Output_Pixel_3,
	output [15:0] Output_Pixel_4,
	output [15:0] Output_Pixel_5,
	output [15:0] Output_Pixel_6,
	output [15:0] Output_Pixel_7,
	output [15:0] Output_Pixel_8,
	output [15:0] Output_Pixel_9,
	output [15:0] Output_Pixel_10,
	output [15:0] Output_Pixel_11,
	output [15:0] Output_Pixel_12,
	output Output_Valid,
	output Output_Finish
   );
	
	wire Output_Valid_1;
	wire Output_Valid_2;
	wire Output_Valid_3;
	wire Output_Valid_4;
	wire Output_Valid_5;
	wire Output_Valid_6;
	wire Output_Valid_7;
	wire Output_Valid_8;
	wire Output_Valid_9;
	wire Output_Valid_10;
	wire Output_Valid_11;
	wire Output_Valid_12;
	
	wire Output_Finish_1;
	wire Output_Finish_2;
	wire Output_Finish_3;
	wire Output_Finish_4;
	wire Output_Finish_5;
	wire Output_Finish_6;
	wire Output_Finish_7;
	wire Output_Finish_8;
	wire Output_Finish_9;
	wire Output_Finish_10;
	wire Output_Finish_11;
	wire Output_Finish_12;
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
	
	assign Output_Valid = Output_Valid_1 || Output_Valid_2 || Output_Valid_3 || Output_Valid_4 || Output_Valid_5 || Output_Valid_6||Output_Valid_7 || Output_Valid_8 || Output_Valid_9 || Output_Valid_10 || Output_Valid_11 || Output_Valid_12;
	assign Output_Finish = Output_Finish_1 || Output_Finish_2 || Output_Finish_3 || Output_Finish_4 || Output_Finish_5 || Output_Finish_6||Output_Finish_7 || Output_Finish_8 || Output_Finish_9 || Output_Finish_10 || Output_Finish_11 || Output_Finish_12;

	SamplingModule2 Kernel_1(.Clock(Clock),
									.Input_Valid(Input_Valid),
									.Input_Finish(Input_Finish),
									.Input_Reset(Input_Reset),
									.Input_Pixel(Input_Pixel_1),
									.Output_Pixel(Output_Pixel_1),
									.Output_Valid(Output_Valid_1),
									.Output_Finish(Output_Finish_1)
									);
 
	SamplingModule2 Kernel_2(.Clock(Clock),
									.Input_Valid(Input_Valid),
									.Input_Finish(Input_Finish),
									.Input_Reset(Input_Reset),
									.Input_Pixel(Input_Pixel_2),
									.Output_Pixel(Output_Pixel_2),
									.Output_Valid(Output_Valid_2),
									.Output_Finish(Output_Finish_2)
									);
	SamplingModule2 Kernel_3(.Clock(Clock),
									.Input_Valid(Input_Valid),
									.Input_Finish(Input_Finish),
									.Input_Reset(Input_Reset),
									.Input_Pixel(Input_Pixel_3),
									.Output_Pixel(Output_Pixel_3),
									.Output_Valid(Output_Valid_3),
									.Output_Finish(Output_Finish_3)
									);
	SamplingModule2 Kernel_4(.Clock(Clock),
									.Input_Valid(Input_Valid),
									.Input_Finish(Input_Finish),
									.Input_Reset(Input_Reset),
									.Input_Pixel(Input_Pixel_4),
									.Output_Pixel(Output_Pixel_4),
									.Output_Valid(Output_Valid_4),
									.Output_Finish(Output_Finish_4));
	SamplingModule2 Kernel_5(.Clock(Clock),
									.Input_Valid(Input_Valid),
									.Input_Finish(Input_Finish),
									.Input_Reset(Input_Reset),
									.Input_Pixel(Input_Pixel_5),
									.Output_Pixel(Output_Pixel_5),
									.Output_Valid(Output_Valid_5),
									.Output_Finish(Output_Finish_5)
									);
	SamplingModule2 Kernel_6(.Clock(Clock),
									.Input_Valid(Input_Valid),
									.Input_Finish(Input_Finish),
									.Input_Reset(Input_Reset),
									.Input_Pixel(Input_Pixel_6),
									.Output_Pixel(Output_Pixel_6),
									.Output_Valid(Output_Valid_6),
									.Output_Finish(Output_Finish_6)
									);
	SamplingModule2 Kernel_7(.Clock(Clock),
									.Input_Valid(Input_Valid),
									.Input_Finish(Input_Finish),
									.Input_Reset(Input_Reset),
									.Input_Pixel(Input_Pixel_7),
									.Output_Pixel(Output_Pixel_7),
									.Output_Valid(Output_Valid_7),
									.Output_Finish(Output_Finish_7)
									);
 
	SamplingModule2 Kernel_8(.Clock(Clock),
									.Input_Valid(Input_Valid),
									.Input_Finish(Input_Finish),
									.Input_Reset(Input_Reset),
									.Input_Pixel(Input_Pixel_8),
									.Output_Pixel(Output_Pixel_8),
									.Output_Valid(Output_Valid_8),
									.Output_Finish(Output_Finish_8)
									);
	SamplingModule2 Kernel_9(.Clock(Clock),
									.Input_Valid(Input_Valid),
									.Input_Finish(Input_Finish),
									.Input_Reset(Input_Reset),
									.Input_Pixel(Input_Pixel_9),
									.Output_Pixel(Output_Pixel_9),
									.Output_Valid(Output_Valid_9),
									.Output_Finish(Output_Finish_9)
									);
	SamplingModule2 Kernel_10(.Clock(Clock),
									.Input_Valid(Input_Valid),
									.Input_Finish(Input_Finish),
									.Input_Reset(Input_Reset),
									.Input_Pixel(Input_Pixel_10),
									.Output_Pixel(Output_Pixel_10),
									.Output_Valid(Output_Valid_10),
									.Output_Finish(Output_Finish_10));
	SamplingModule2 Kernel_11(.Clock(Clock),
									.Input_Valid(Input_Valid),
									.Input_Finish(Input_Finish),
									.Input_Reset(Input_Reset),
									.Input_Pixel(Input_Pixel_11),
									.Output_Pixel(Output_Pixel_11),
									.Output_Valid(Output_Valid_11),
									.Output_Finish(Output_Finish_11)
									);
	SamplingModule2 Kernel_12(.Clock(Clock),
									.Input_Valid(Input_Valid),
									.Input_Finish(Input_Finish),
									.Input_Reset(Input_Reset),
									.Input_Pixel(Input_Pixel_12),
									.Output_Pixel(Output_Pixel_12),
									.Output_Valid(Output_Valid_12),
									.Output_Finish(Output_Finish_12)
									);
					


endmodule
