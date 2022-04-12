`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:57:05 03/01/2018 
// Design Name: 
// Module Name:    conv_layer_1 
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
/*
module conv#(parameter input_bits=16,
								output_bits=32,
								image_width=28,
								kernal_select="kernel_c1_2.txt"
								)(
    input [input_bits-1:0] input_port,
	 input [31:0] bias,
	 input valid,
	 input  clk,
	 input reset,
	 
    output reg signed [output_bits-1:0] output_port,
    output reg finish,
    output reg invalid

    );
	  output signed [output_bits-1:0] out2,
											 output signed [output_bits-1:0] out3,
											 output signed [output_bits-1:0] out4,
											 output signed [output_bits-1:0] out5,
*/

//kernal of level will in q20.12
//image input will be in q4.12
//convlevel one out will be q16.16

module conv_layer_1 #(parameter input_bit= 16,
						output_bits=32)(input [input_bit-1:0] input_image,
											 input valid_input,
											 input clk_global,
											 input reset_layer,
											 output reg [output_bits-1:0] out1,
											 output reg  [output_bits-1:0] out2,
											 output reg [output_bits-1:0] out3,
											 output reg [output_bits-1:0] out4,
											 output reg [output_bits-1:0] out5,
											 output reg [output_bits-1:0] out6,
											 output invalid,
											 output finish
											 
    );
	 wire finish1,invalid1;
	 wire finish2,invalid2;
	 wire finish3,invalid3;
	 wire finish4,invalid4;
	 wire finish5,invalid5;
	 wire finish6,invalid6;
	 
	 assign finish=finish1||finish2||finish3||finish4||finish5||finish6;
	 assign invalid=invalid1||invalid2||invalid3||invalid4||invalid5||invalid6;
	 

	 wire [output_bits-1:0] bias1='hfe5836b2;//q8.24
	 wire [output_bits-1:0] bias2='h01605c77;
	 wire [output_bits-1:0] bias3='hfe7aad5e;
	 wire [output_bits-1:0] bias4='hff771ec4;
	 wire [output_bits-1:0] bias5='h0153a95c;
	 wire [output_bits-1:0] bias6='hfdf97e79;

	 
	 wire signed [output_bits-1:0] conv_out1;		
	 wire signed [output_bits-1:0] conv_out2;
	 wire signed [output_bits-1:0] conv_out3;
	 wire signed [output_bits-1:0] conv_out4;
	 wire signed [output_bits-1:0] conv_out5;
	 wire signed [output_bits-1:0] conv_out6;
	 
	 	conv #(16,32,28,"kernel_c1_1.txt") conv_k1 (.input_port(input_image), .valid(valid_input), .clk(clk_global), .reset(reset_layer), 
															.output_port(conv_out1),.invalid(invalid1),.bias(bias1),.finish(finish1)	);
															
	 	conv #(16,32,28,"kernel_c1_2.txt") conv_k2 (.input_port(input_image), .valid(valid_input), .clk(clk_global), .reset(reset_layer), 
															.output_port(conv_out2),.invalid(invalid2),.bias(bias2),.finish(finish2)	);
															
															
	 	conv #(16,32,28,"kernel_c1_3.txt") conv_k3 (.input_port(input_image), .valid(valid_input), .clk(clk_global), .reset(reset_layer), 
															.output_port(conv_out3),.invalid(invalid3),.bias(bias3),.finish(finish3)	);

	 	conv #(16,32,28,"kernel_c1_4.txt") conv_k4 (.input_port(input_image), .valid(valid_input), .clk(clk_global), .reset(reset_layer), 
															.output_port(conv_out4),.invalid(invalid4),.bias(bias4),.finish(finish4)	);

	 	conv #(16,32,28,"kernel_c1_5.txt") conv_k5 (.input_port(input_image), .valid(valid_input), .clk(clk_global), .reset(reset_layer), 
															.output_port(conv_out5),.invalid(invalid5),.bias(bias5),.finish(finish5)	);
															
	 	conv #(16,32,28,"kernel_c1_6.txt") conv_k6 (.input_port(input_image), .valid(valid_input), .clk(clk_global), .reset(reset_layer), 
															.output_port(conv_out6),.invalid(invalid6),.bias(bias6),.finish(finish6)	);
///////////////////////////////////1	
	always@(*)
	begin
			if(conv_out1>0)
			begin
				if(conv_out1<'h01000000)
				
				out1<=conv_out1[31:0];
				//out1<='h01000000;
				else
					//out1<=conv_out1;
					out1<='h01000000;
				end
			else
				out1<=0;
	end
	/////////////////////////////////2
		always@(*)
	begin
			if(conv_out2>0)
			begin
				if(conv_out2<'h01000000)
				out2<=conv_out2[31:0];
				else
					out2<='h01000000;
				end
			else
				out2<=0;
	end
/////////////////////////////////3
		always@(*)
	begin
			if(conv_out3>0)
				begin
				if(conv_out3<'h01000000)
				out3<=conv_out3[31:0];
				else
					out3<='h01000000;
				end
			else
				out3<=0;
	end
	
/////////////////////////////////4
		always@(*)
	begin
			if(conv_out4>0)
			begin
				if(conv_out4<'h01000000)
				out4<=conv_out4[31:0];
				else
					out4<='h01000000;
				end
			else
				out4<=0;
	end
	
/////////////////////////////////5
		always@(*)
	begin
			if(conv_out5>0)
			begin
				if(conv_out5<'h01000000)
				out5<=conv_out5[31:0];
				else
					out5<='h01000000;
				end
			else
				out5<=0;
	end
	
/////////////////////////////////6
		always@(*)
	begin
			if(conv_out6>0)
				begin
				if(conv_out6<'h01000000)
				out6<=conv_out6[31:0];
				else
					out6<='h01000000;
				end
			else
				out6<=0;
	end
		
endmodule
