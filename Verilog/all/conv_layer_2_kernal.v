`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:45:31 03/22/2018 
// Design Name: 
// Module Name:    conv_layer_2_kernal 
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
module conv_layer_2_kernal#(parameter a="kernel_c2_1")
								(input [15:0] image_kernal_1,
								 input [15:0] image_kernal_2,
								 input [15:0] image_kernal_3,
								 input [15:0] image_kernal_4,
								 input [15:0] image_kernal_5,
								 input [15:0] image_kernal_6,
								 input valid,
								 input clk_global,
								 input reset,
								 input signed [31:0]bias,
								 output reg [31:0] out_k9,
								 output reg finish,
								 output reg invalid
    );
	 								 
								 wire signed [31:0]out_1,out_2,out_3,out_4,out_5,out_6;
								 wire finish_1,finish_2,finish_3,finish_4,finish_5,finish_6;
								 wire invalid_1,invalid_2,invalid_3,invalid_4,invalid_5,invalid_6;
								 reg signed [31:0] out_put;
								 initial
								 begin
										finish<=0;
										invalid<=1;
										out_put<=0;
										out_k9<=0;
								 end
								 //wire	finish,invalid;
	 							/*	 assign invalid=invalid_1;
									 assign finish=finish_1;
									 assign out_k9=out_1;	*/
									
									 
									 
									 
	conv_12x12 #(16,32,12,{a,"_1_q3212.txt"}) conv_f1 (	.input_port(image_kernal_1), 	.bias(bias),	.valid(valid),  .clk(clk_global), 	.reset(reset), 
														.output_port(out_1),.finish(finish_1), .invalid(invalid_1)	);

								 
	conv_12x12 #(16,32,12,{a,"_2_q3212.txt"}) conv_f2 (	.input_port(image_kernal_2), 	.bias(0),	.valid(valid),  .clk(clk_global), 	.reset(reset), 
														.output_port(out_2),.finish(finish_2), .invalid(invalid_2)	);

								 
	conv_12x12 #(16,32,12,{a,"_3_q3212.txt"}) conv_f3 (	.input_port(image_kernal_3), 	.bias(0),	.valid(valid),  .clk(clk_global), 	.reset(reset), 
														.output_port(out_3),.finish(finish_3), .invalid(invalid_3)	);

								 
	conv_12x12 #(16,32,12,{a,"_4_q3212.txt"}) conv_f4 (	.input_port(image_kernal_4), 	.bias(0),	.valid(valid),  .clk(clk_global), 	.reset(reset), 
														.output_port(out_4),.finish(finish_4), .invalid(invalid_4)	);
								 
	conv_12x12 #(16,32,12,{a,"_5_q3212.txt"}) conv_f5 (	.input_port(image_kernal_5), 	.bias(0),	.valid(valid),  .clk(clk_global), 	.reset(reset), 
														.output_port(out_5),.finish(finish_5), .invalid(invalid_5)	);

								 
	conv_12x12 #(16,32,12,{a,"_6_q3212.txt"}) conv_f6 (	.input_port(image_kernal_6), 	.bias(0),	.valid(valid),  .clk(clk_global), 	.reset(reset), 
														.output_port(out_6),.finish(finish_6), .invalid(invalid_6)	);



	
	

	always@(posedge clk_global )
	begin
		
		invalid<=invalid_1&&invalid_2&&invalid_3&&invalid_4&&invalid_5&&invalid_6;
		finish<=finish_1&&finish_2&&finish_3&&finish_4&&finish_5&&finish_6;
		out_put[31:0]<=out_1[31:0]+out_2[31:0]+out_3[31:0]+out_4[31:0]+out_5[31:0]+out_6[31:0] ;  //+out_2;//+out_3+out_4+out_5+out_6;
		
	end
		


	always@(*)
	begin
			if(out_put>0)
			if(out_put<'h01000000)
				out_k9<=out_put[31:8];
				else
					out_k9<='h00010000;

			else
				out_k9<=0;
	end


endmodule
