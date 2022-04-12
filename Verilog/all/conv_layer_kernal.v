`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:45:40 03/14/2018 
// Design Name: 
// Module Name:    conv_layer_kernal 
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
module conv_layer_kernal#(parameter a="kernel_c2_1_1")
								(input [31:0] image_kernal_1,
								 input [31:0] image_kernal_2,
								 input [31:0] image_kernal_3,
								 input [31:0] image_kernal_4,
								 input [31:0] image_kernal_5,
								 input [31:0] image_kernal_6,
								 input valid,
								 input clk_global,
								 input reset,
								 input [31:0]bias,
								 output [31:0] out_k6,
								 output finish,
								 output invalid);
								 
								 wire [31:0]out_1,out_2,out_3,out_4,out_5,out_6;
								 wire finish_1,finish_2,finish_3,finish_4,finish_5,finish_6;
								 wire invalid_1,invalid_2,invalid_3,invalid_4,invalid_5,invalid_6;
								 //wire	finish,invalid;
								 
	conv_12x12 #(32,32,12,12,{a,"_q3216.txt"}) conv_f_1 (	.input_port(image_kernal_1), 	.bias(bias),	.valid(valid),  .clk(clk_global), 	.reset(reset), 
														.output_port(out_1),.finish(finish_1), .invalid(invalid_1)	);

								 
	conv_12x12 #(32,32,12,12,{a,"_q3216.txt"}) conv_f2 (	.input_port(image_kernal_2), 	.bias(0),	.valid(valid),  .clk(clk_global), 	.reset(reset), 
														.output_port(out_2),.finish(finish_2), .invalid(invalid_2)	);

								 
	conv_12x12 #(32,32,12,12,{a,"_q3216.txt"}) conv_f3 (	.input_port(image_kernal_3), 	.bias(0),	.valid(valid),  .clk(clk_global), 	.reset(reset), 
														.output_port(out_3),.finish(finish_3), .invalid(invalid_3)	);

								 
	conv_12x12 #(32,32,12,12,{a,"_q3216.txt"}) conv_f4 (	.input_port(image_kernal_4), 	.bias(0),	.valid(valid),  .clk(clk_global), 	.reset(reset), 
														.output_port(out_4),.finish(finish_4), .invalid(invalid_4)	);
								 
	conv_12x12 #(32,32,12,12,{a,"_q3216.txt"}) conv_f5 (	.input_port(image_kernal_5), 	.bias(0),	.valid(valid),  .clk(clk_global), 	.reset(reset), 
														.output_port(out_5),.finish(finish_5), .invalid(invalid_5)	);

								 
	conv_12x12 #(32,32,12,12,{a,"_q3216.txt"}) conv_f6 (	.input_port(image_kernal_6), 	.bias(0),	.valid(valid),  .clk(clk_global), 	.reset(reset), 
														.output_port(out_6),.finish(finish_6), .invalid(invalid_6)	);

endmodules
