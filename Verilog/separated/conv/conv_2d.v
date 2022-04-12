`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:51:11 01/23/2018 
// Design Name: 
// Module Name:    conv_2d 
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
//k
//////////////////////////////////////////////////////////////////////////////////
module conv_2d(input [15:0]image_input_pixel,
					input [15:0]kernal_input,
					
					input input_valid,				
					input complete,
					input clk,
					output [31:0]conv_output_pixel
					);
					
	reg [15:0]kernal[24:0];
	wire [15:0]l1_out,l2_out,l3_out;
	wire valid_1,valid_2,valid_3;
	wire clk_1,clk_2,clk_3;

	line_buffer l1(image_input_pixel,l1_out,valid_1,clk_1);
	line_buffer l2(l1_out,l2_out,valid_2,clk_2);
	line_buffer l3(l2_out,l3_out,valid_3,clk_3);
	
	assign clk_1= ~kernal_input_valid & clk & kernal_complete;
	assign clk_2=clk_1 & valid_1;
	assign clk_3=clk_2 & valid_2;

	assign conv_output_pixel=l3_out;
	

	
	


endmodule
