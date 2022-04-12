`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:07:45 03/29/2018 
// Design Name: 
// Module Name:    Topmodule 
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
module Topmodule(input [15:0] imagein,
						input reset,	
						input clk,
						input valid,
						
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

						output  invalid,
						output finish,
						output[4:0] index_out,
						output reg index_valid
				
						
						
    );
	 
	 initial begin
	 count<=0;
	 index<=0;
	 index_valid<=0;
	 end
	 //wires for the convlayer 1
	 wire[31:0] out_c1_1,out_c1_2,out_c1_3,out_c1_4,out_c1_5,out_c1_6;
	 wire valid_out_c1,finish_c1;
	 wire valid_c1;
	 assign valid_c1=~valid_out_c1;
	
	 
	 //wire for the samplinglayer1
	 wire [15:0] out_s1_1,out_s1_2,out_s1_3,out_s1_4,out_s1_5,out_s1_6;
	 wire valid_s1,finish_s1;
	 
	 // Wire for the convlayer2
	 wire[31:0] out_c2_1 , out_c2_2 , out_c2_3 , out_c2_4 , out_c2_5 , out_c2_6,
					out_c2_7 , out_c2_8 , out_c2_9 , out_c2_10 , out_c2_11 , out_c2_12;
					
	 wire valid_c2,finish_c2,valid_out_c2;
	 assign valid_c2=~valid_out_c2;
	 
	 // Wires for the samplinglayer1
	 	 wire[15:0] out_s2_1 , out_s2_2 , out_s2_3 , out_s2_4 , out_s2_5 , out_s2_6,
						out_s2_7 , out_s2_8 , out_s2_9 , out_s2_10 , out_s2_11 , out_s2_12;
					
	 wire valid_s2,finish_s2;
	 
	 wire [31:0] out_f0 , out_f1 , out_f2 , out_f3 , out_f4 , out_f5 , out_f6 , out_f7 , out_f8 , out_f9 ;
	 wire valid_f,finish_f;	
	
	 
	 
	 //assginment
	 assign out1=out_f0;
	 assign out2=out_f1;
	 assign out3=out_f2;
	 assign out4=out_f3;
	 assign out5=out_f4;
	 assign out6=out_f5;
	 assign out7=out_f6;
	 
	 assign out8=out_f7;
	 assign out9=out_f8;
	 assign out10=out_f9;
	 //assign out11=out_s2_11;
	 //assign out12=out_s2_12;
	 

	 
	 assign 	invalid=valid_f;
	 assign 	finish=finish_f; 
	 
	 
	 
	 //Conv layyer
conv_layer_1 covn_first_layer ( .input_image(imagein),  .valid_input(valid),.clk_global(clk),.reset_layer(reset), .out1(out_c1_1), .out2(out_c1_2), //input 16bit Q4.12
    .out3(out_c1_3),  .out4(out_c1_4), .out5(out_c1_5), .out6(out_c1_6), .invalid(valid_out_c1),   .finish(finish_c1)    );//output 32bit Q8.24
	 //pooling layer
SamplingLayer1 sampling_layer_one (.Clock(clk), .Input_Valid(valid_c1), .Input_Finish(finish_c1), .Input_Reset(reset), 
    .Input_Pixel_1(out_c1_1[27:12]), .Input_Pixel_2(out_c1_2[27:12]), .Input_Pixel_3(out_c1_3[27:12]),  .Input_Pixel_4(out_c1_4[27:12]), .Input_Pixel_5(out_c1_5[27:12]), .Input_Pixel_6(out_c1_6[27:12]),  //input 16bit Q4.12 
    .Output_Pixel_1(out_s1_1), .Output_Pixel_2(out_s1_2),.Output_Pixel_3(out_s1_3),.Output_Pixel_4(out_s1_4),.Output_Pixel_5(out_s1_5),.Output_Pixel_6(out_s1_6),//output 16bit Q4.12
    .Output_Valid(valid_s1),.Output_Finish(finish_s1)
    );

conv_layer_2 conv_second_layer (.image_1(out_s1_1),.image_2(out_s1_2),.image_3(out_s1_3),.image_4(out_s1_4),.image_5(out_s1_5), .image_6(out_s1_6), //input 16bit Q4.12
    .valid(valid_s1),.clk(clk), .reset(reset), 
	 
	 .out1(out_c2_1), .out2(out_c2_2),.out3(out_c2_3), .out4(out_c2_4),.out5(out_c2_5), .out6(out_c2_6),				//// output 32 bit Q16.16
	 .out7(out_c2_7), .out8(out_c2_8),.out9(out_c2_9), .out10(out_c2_10), .out11(out_c2_11),.out12(out_c2_12), 		////output 32 bit Q16.16	
	 
    .finish(finish_c2),  .invalid(valid_out_c2));
	 
SamplingLayer2 sampling_layer_two (
    .Clock(clk), 
    .Input_Valid(valid_c2), 
    .Input_Finish(finish_c2), 
    .Input_Reset(reset), 
    .Input_Pixel_1(out_c2_1[19:4]), //16 bit Q4.12
    .Input_Pixel_2(out_c2_2[19:4]), //16 bit Q4.12
    .Input_Pixel_3(out_c2_3[19:4]), //16 bit Q4.12
    .Input_Pixel_4(out_c2_4[19:4]), //16 bit Q4.12
    .Input_Pixel_5(out_c2_5[19:4]), //16 bit Q4.12
    .Input_Pixel_6(out_c2_6[19:4]), //16 bit Q4.12
    .Input_Pixel_7(out_c2_7[19:4]), //16 bit Q4.12
    .Input_Pixel_8(out_c2_8[19:4]), //16 bit Q4.12
    .Input_Pixel_9(out_c2_9[19:4]), //16 bit Q4.12
    .Input_Pixel_10(out_c2_10[19:4]), //16 bit Q4.12
    .Input_Pixel_11(out_c2_11[19:4]), //16 bit Q4.12
    .Input_Pixel_12(out_c2_12[19:4]), //16 bit Q4.12
	 
    .Output_Pixel_1(out_s2_1), //16 bit Q4.12
    .Output_Pixel_2(out_s2_2), //16 bit Q4.12
    .Output_Pixel_3(out_s2_3), //16 bit Q4.12
    .Output_Pixel_4(out_s2_4), //16 bit Q4.12
    .Output_Pixel_5(out_s2_5), //16 bit Q4.12
    .Output_Pixel_6(out_s2_6), //16 bit Q4.12
    .Output_Pixel_7(out_s2_7), //16 bit Q4.12
    .Output_Pixel_8(out_s2_8), //16 bit Q4.12
    .Output_Pixel_9(out_s2_9), //16 bit Q4.12
    .Output_Pixel_10(out_s2_10), //16 bit Q4.12
    .Output_Pixel_11(out_s2_11), //16 bit Q4.12
    .Output_Pixel_12(out_s2_12), //16 bit Q4.12
    .Output_Valid(valid_s2), 
    .Output_Finish(finish_s2)
    );
	 
	 
fullyconnectedlayer Full_connected (
    .Clock(clk), 
    .Input_Pixel_0(out_s2_1), //16 bit Q4.12
    .Input_Pixel_1(out_s2_2), //16 bit Q4.12
    .Input_Pixel_2(out_s2_3), //16 bit Q4.12
    .Input_Pixel_3(out_s2_4), //16 bit Q4.12
    .Input_Pixel_4(out_s2_5), //16 bit Q4.12
    .Input_Pixel_5(out_s2_6), //16 bit Q4.12
    .Input_Pixel_6(out_s2_7), //16 bit Q4.12
    .Input_Pixel_7(out_s2_8), //16 bit Q4.12
    .Input_Pixel_8(out_s2_9), //16 bit Q4.12
    .Input_Pixel_9(out_s2_10), //16 bit Q4.12
    .Input_Pixel_10(out_s2_11), //16 bit Q4.12
    .Input_Pixel_11(out_s2_12), //16 bit Q4.12
    .Input_Valid(valid_s2), 
    .Input_Finish(finish_s2), 
    .Input_Reset(reset), 
    .Output_0(out_f0), //32 bit Q8.24
    .Output_1(out_f1), //32 bit Q8.24
    .Output_2(out_f2), //32 bit Q8.24
    .Output_3(out_f3), //32 bit Q8.24
    .Output_4(out_f4), //32 bit Q8.24
    .Output_5(out_f5), //32 bit Q8.24
    .Output_6(out_f6), //32 bit Q8.24
    .Output_7(out_f7), //32 bit Q8.24
    .Output_8(out_f8), //32 bit Q8.24
    .Output_9(out_f9), //32 bit Q8.24
    .Output_Valid(valid_f), 
    .Output_Finish(finish_f)
    );
	 
	  
	 //
	 
	 reg signed [31:0] largest;
	 reg [4:0]	index;
	 reg [9:0] count;
	 wire signed [31:0] numbers[0:9];
	 assign  numbers[0]= out_f0;
	 assign  numbers[1]= out_f1;
	 assign  numbers[2]= out_f2;
	 assign  numbers[3]= out_f3;
	 assign  numbers[4]= out_f4;
	 assign  numbers[5]= out_f5;
	 assign  numbers[6]= out_f6;
	 assign  numbers[7]= out_f7;
	 assign  numbers[8]= out_f8;
	 assign  numbers[9]= out_f9;
		
	 assign index_out=index;
	 always@(posedge clk)
	 begin
			if(valid_f==1 && finish_f==1&&reset==0&&index_valid==0)
			begin
				count<=count+1;
				if (count==1)
					begin
						largest<=out_f0;
						index<=0;						
					end
				else if(count>1&&count<11)	
				begin
						if(numbers[count-1]>largest)
							begin
									largest<=numbers[count-1];
									index<=count-1;
							end
				end
				
				if(count==11)
				begin
					index_valid<=1;
				end
				
			end
			if (reset == 1)
			begin
					count<=0;
					index<=0;
					index_valid<=0;
			end
	 
	 end
	 
	 
	 
	 

endmodule
