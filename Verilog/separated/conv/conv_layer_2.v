`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:46:26 03/22/2018 
// Design Name: 
// Module Name:    conv_layer_2 
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
	/*						output reg out2,
							output reg out3,
							output reg out4,
							output reg out5,
							output reg out6,
							output reg out7,
							output reg out8,
							output reg out9,
							output reg out10,
							output reg out11,
							output r out12,*/



//
//////////////////////////////////////////////////////////////////////////////////
module conv_layer_2( input [15:0] image_1,
							input [15:0] image_2,
							input [15:0] image_3,
							input [15:0] image_4,
							input [15:0] image_5,
							input [15:0] image_6,
							
							input valid,
							input clk,
							input reset,
							
							output [31:0] out1,
							output [31:0] out2,
							output [31:0] out3,
							output [31:0] out4,
							output [31:0] out5,
							output [31:0] out6,
							output [31:0] out7,
							output [31:0] out8,
							output [31:0] out9,
							output [31:0] out10,
							output [31:0] out11,
							output [31:0] out12,
							

							
							output finish,
							output invalid
							
    );
	 wire invalid_1,invalid_2,invalid_3,invalid_4,invalid_5,invalid_6,invalid_7,invalid_8,invalid_9,invalid_10,invalid_11,invalid_12;
	 wire finish_1,finish_2,finish_3,finish_4,finish_5,finish_6,finish_7,finish_8,finish_9,finish_10,finish_11,finish_12;
	 
	 assign finish=finish_1 & finish_2 & finish_3 & finish_4 & finish_5 & finish_6 & finish_7 & finish_8 & finish_9 & finish_10 & finish_11 & finish_12;
	 assign invalid=invalid_1 & invalid_2 & invalid_3 & invalid_4 & invalid_5 & invalid_6 & invalid_7 & invalid_8 & invalid_9 & invalid_10 & invalid_11 & invalid_12;
	 
	conv_layer_2_kernal #("kernel_c2_1") conv_k1 ( .image_kernal_1(image_1),.image_kernal_2(image_2), .image_kernal_3(image_3),.image_kernal_4(image_4),  .image_kernal_5(image_5), 
								.image_kernal_6(image_6),  .valid(valid),  .clk_global(clk),.reset(reset),.bias('hfff9c37f), .out_k9(out1),.finish(finish_1), .invalid(invalid_1)  );
								
	conv_layer_2_kernal #("kernel_c2_2") conv_k2 ( .image_kernal_1(image_1),.image_kernal_2(image_2), .image_kernal_3(image_3),.image_kernal_4(image_4),  .image_kernal_5(image_5), 
								.image_kernal_6(image_6),  .valid(valid),  .clk_global(clk),.reset(reset),.bias('h002383a4), .out_k9(out2),.finish(finish_2), .invalid(invalid_2)  );
	
	conv_layer_2_kernal #("kernel_c2_3") conv_k3 ( .image_kernal_1(image_1),.image_kernal_2(image_2), .image_kernal_3(image_3),.image_kernal_4(image_4),  .image_kernal_5(image_5), 
								.image_kernal_6(image_6),  .valid(valid),  .clk_global(clk),.reset(reset),.bias('hffe00ccc), .out_k9(out3),.finish(finish_3), .invalid(invalid_3)  );
	
	conv_layer_2_kernal #("kernel_c2_4") conv_k4 ( .image_kernal_1(image_1),.image_kernal_2(image_2), .image_kernal_3(image_3),.image_kernal_4(image_4),  .image_kernal_5(image_5), 
								.image_kernal_6(image_6),  .valid(valid),  .clk_global(clk),.reset(reset),.bias('hffe725b7), .out_k9(out4),.finish(finish_4), .invalid(invalid_4)  );
								
	conv_layer_2_kernal #("kernel_c2_5") conv_k5 ( .image_kernal_1(image_1),.image_kernal_2(image_2), .image_kernal_3(image_3),.image_kernal_4(image_4),  .image_kernal_5(image_5), 
								.image_kernal_6(image_6),  .valid(valid),  .clk_global(clk),.reset(reset),.bias('hffee43fe), .out_k9(out5),.finish(finish_5), .invalid(invalid_5)  );
							
	conv_layer_2_kernal #("kernel_c2_6") conv_k6 ( .image_kernal_1(image_1),.image_kernal_2(image_2), .image_kernal_3(image_3),.image_kernal_4(image_4),  .image_kernal_5(image_5), 
								.image_kernal_6(image_6),  .valid(valid),  .clk_global(clk),.reset(reset),.bias('hfff00bdd), .out_k9(out6),.finish(finish_6), .invalid(invalid_6)  );
							
	conv_layer_2_kernal #("kernel_c2_7") conv_k7 ( .image_kernal_1(image_1),.image_kernal_2(image_2), .image_kernal_3(image_3),.image_kernal_4(image_4),  .image_kernal_5(image_5), 
								.image_kernal_6(image_6),  .valid(valid),  .clk_global(clk),.reset(reset),.bias('hffdfee2b), .out_k9(out7),.finish(finish_7), .invalid(invalid_7)  );
								
	conv_layer_2_kernal #("kernel_c2_8") conv_k8 ( .image_kernal_1(image_1),.image_kernal_2(image_2), .image_kernal_3(image_3),.image_kernal_4(image_4),  .image_kernal_5(image_5), 
								.image_kernal_6(image_6),  .valid(valid),  .clk_global(clk),.reset(reset),.bias('hffdc3d25), .out_k9(out8),.finish(finish_8), .invalid(invalid_8)  );
								
								
								
	conv_layer_2_kernal #("kernel_c2_9") conv_k9 ( .image_kernal_1(image_1),.image_kernal_2(image_2), .image_kernal_3(image_3),.image_kernal_4(image_4),  .image_kernal_5(image_5), 
								.image_kernal_6(image_6),  .valid(valid),  .clk_global(clk),.reset(reset),.bias('h001289d7), .out_k9(out9),.finish(finish_9), .invalid(invalid_9)  );
								
								
								
	conv_layer_2_kernal #("kernel_c2_10") conv_k10 ( .image_kernal_1(image_1),.image_kernal_2(image_2), .image_kernal_3(image_3),.image_kernal_4(image_4),  .image_kernal_5(image_5), 
								.image_kernal_6(image_6),  .valid(valid),  .clk_global(clk),.reset(reset),.bias('hffe0e773), .out_k9(out10),.finish(finish_10), .invalid(invalid_10)  );
								
	conv_layer_2_kernal #("kernel_c2_11") conv_k11 ( .image_kernal_1(image_1),.image_kernal_2(image_2), .image_kernal_3(image_3),.image_kernal_4(image_4),  .image_kernal_5(image_5), 
								.image_kernal_6(image_6),  .valid(valid),  .clk_global(clk),.reset(reset),.bias('hfff37b0f), .out_k9(out11),.finish(finish_11), .invalid(invalid_11)  );
								
	conv_layer_2_kernal #("kernel_c2_12") conv_k12 ( .image_kernal_1(image_1),.image_kernal_2(image_2), .image_kernal_3(image_3),.image_kernal_4(image_4),  .image_kernal_5(image_5), 
								.image_kernal_6(image_6),  .valid(valid),  .clk_global(clk),.reset(reset),.bias('h000be683), .out_k9(out12),.finish(finish_12), .invalid(invalid_12)  );

endmodule
