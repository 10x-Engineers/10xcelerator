`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:31 08/02/2018 
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
module fullyconnectedlayer(   
	input Clock,
	input [15:0] Input_Pixel_0,
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
	 initial
		begin
				tempv<=0;
				tempf<=0;
				Output_0 <=0;
				Output_1 <=0;
				Output_2 <=0;
				Output_3 <=0;
				Output_4 <=0;
				Output_5 <=0;
				Output_6 <=0;
				Output_7 <=0;
				Output_8 <=0;
				Output_9 <=0;
		end
	 
	 wire out_v[11:0];
	 wire out_f[11:0];
	 wire[31:0] Output_0_0, Output_1_0, Output_2_0, Output_3_0, Output_4_0, Output_5_0, Output_6_0, Output_7_0, Output_8_0, Output_9_0 ;
fullyconnectedmodule #("FCL0_q3212.hex") module_0 (
    .Clock(Clock), 
    .Input_Pixel(Input_Pixel_0), 
    .Input_Valid(Input_Valid), 
    .Input_Finish(Input_Finish), 
    .Input_Reset(Input_Reset), 
    .Output_0(Output_0_0), 
    .Output_1(Output_1_0), 
    .Output_2(Output_2_0), 
    .Output_3(Output_3_0), 
    .Output_4(Output_4_0), 
    .Output_5(Output_5_0), 
    .Output_6(Output_6_0), 
    .Output_7(Output_7_0), 
    .Output_8(Output_8_0), 
    .Output_9(Output_9_0), 
    .Output_Valid(out_v[0]), 
    .Output_Finish(out_f[0])
    );
	 
wire[31:0] Output_0_1, Output_1_1, Output_2_1, Output_3_1, Output_4_1, Output_5_1, Output_6_1, Output_7_1, Output_8_1, Output_9_1 ;	 
fullyconnectedmodule #("FCL1_q3212.hex") module_1 (
    .Clock(Clock), 
    .Input_Pixel(Input_Pixel_1), 
    .Input_Valid(Input_Valid), 
    .Input_Finish(Input_Finish), 
    .Input_Reset(Input_Reset), 
    .Output_0(Output_0_1), 
    .Output_1(Output_1_1), 
    .Output_2(Output_2_1), 
    .Output_3(Output_3_1), 
    .Output_4(Output_4_1), 
    .Output_5(Output_5_1), 
    .Output_6(Output_6_1), 
    .Output_7(Output_7_1), 
    .Output_8(Output_8_1), 
    .Output_9(Output_9_1), 
    .Output_Valid(out_v[1]), 
    .Output_Finish(out_f[1])
    );

wire[31:0] Output_0_2, Output_1_2, Output_2_2, Output_3_2, Output_4_2, Output_5_2, Output_6_2, Output_7_2, Output_8_2, Output_9_2 ;	 
fullyconnectedmodule #("FCL2_q3212.hex") module_2 (
    .Clock(Clock), 
    .Input_Pixel(Input_Pixel_2), 
    .Input_Valid(Input_Valid), 
    .Input_Finish(Input_Finish), 
    .Input_Reset(Input_Reset), 
    .Output_0(Output_0_2), 
    .Output_1(Output_1_2), 
    .Output_2(Output_2_2), 
    .Output_3(Output_3_2), 
    .Output_4(Output_4_2), 
    .Output_5(Output_5_2), 
    .Output_6(Output_6_2), 
    .Output_7(Output_7_2), 
    .Output_8(Output_8_2), 
    .Output_9(Output_9_2), 
    .Output_Valid(out_v[2]), 
    .Output_Finish(out_f[2])
    );
	 
wire[31:0] Output_0_3, Output_1_3, Output_2_3, Output_3_3, Output_4_3, Output_5_3, Output_6_3, Output_7_3, Output_8_3, Output_9_3 ;	 
fullyconnectedmodule #("FCL3_q3212.hex") module_3 (
    .Clock(Clock), 
    .Input_Pixel(Input_Pixel_3), 
    .Input_Valid(Input_Valid), 
    .Input_Finish(Input_Finish), 
    .Input_Reset(Input_Reset), 
    .Output_0(Output_0_3), 
    .Output_1(Output_1_3), 
    .Output_2(Output_2_3), 
    .Output_3(Output_3_3), 
    .Output_4(Output_4_3), 
    .Output_5(Output_5_3), 
    .Output_6(Output_6_3), 
    .Output_7(Output_7_3), 
    .Output_8(Output_8_3), 
    .Output_9(Output_9_3), 
    .Output_Valid(out_v[3]), 
    .Output_Finish(out_f[3])
    );
	 
wire[31:0] Output_0_4, Output_1_4, Output_2_4, Output_3_4, Output_4_4, Output_5_4, Output_6_4, Output_7_4, Output_8_4, Output_9_4 ;	 
fullyconnectedmodule #("FCL4_q3212.hex") module_4 (
    .Clock(Clock), 
    .Input_Pixel(Input_Pixel_4), 
    .Input_Valid(Input_Valid), 
    .Input_Finish(Input_Finish), 
    .Input_Reset(Input_Reset), 
    .Output_0(Output_0_4), 
    .Output_1(Output_1_4), 
    .Output_2(Output_2_4), 
    .Output_3(Output_3_4), 
    .Output_4(Output_4_4), 
    .Output_5(Output_5_4), 
    .Output_6(Output_6_4), 
    .Output_7(Output_7_4), 
    .Output_8(Output_8_4), 
    .Output_9(Output_9_4), 
    .Output_Valid(out_v[4]), 
    .Output_Finish(out_f[4])
    );

wire[31:0] Output_0_5, Output_1_5, Output_2_5, Output_3_5, Output_4_5, Output_5_5, Output_6_5, Output_7_5, Output_8_5, Output_9_5 ;	 
fullyconnectedmodule #("FCL5_q3212.hex") module_5 (
    .Clock(Clock), 
    .Input_Pixel(Input_Pixel_5), 
    .Input_Valid(Input_Valid), 
    .Input_Finish(Input_Finish), 
    .Input_Reset(Input_Reset), 
    .Output_0(Output_0_5), 
    .Output_1(Output_1_5), 
    .Output_2(Output_2_5), 
    .Output_3(Output_3_5), 
    .Output_4(Output_4_5), 
    .Output_5(Output_5_5), 
    .Output_6(Output_6_5), 
    .Output_7(Output_7_5), 
    .Output_8(Output_8_5), 
    .Output_9(Output_9_5), 
    .Output_Valid(out_v[5]), 
    .Output_Finish(out_f[5])
    );

wire[31:0] Output_0_6, Output_1_6, Output_2_6, Output_3_6, Output_4_6, Output_5_6, Output_6_6, Output_7_6, Output_8_6, Output_9_6 ;	 
fullyconnectedmodule #("FCL6_q3212.hex") module_6 (
    .Clock(Clock), 
    .Input_Pixel(Input_Pixel_6), 
    .Input_Valid(Input_Valid), 
    .Input_Finish(Input_Finish), 
    .Input_Reset(Input_Reset), 
    .Output_0(Output_0_6), 
    .Output_1(Output_1_6), 
    .Output_2(Output_2_6), 
    .Output_3(Output_3_6), 
    .Output_4(Output_4_6), 
    .Output_5(Output_5_6), 
    .Output_6(Output_6_6), 
    .Output_7(Output_7_6), 
    .Output_8(Output_8_6), 
    .Output_9(Output_9_6), 
    .Output_Valid(out_v[6]), 
    .Output_Finish(out_f[6])
    );
wire[31:0] Output_0_7,Output_1_7, Output_2_7, Output_3_7, Output_4_7, Output_5_7, Output_6_7, Output_7_7, Output_8_7, Output_9_7 ;	 
fullyconnectedmodule #("FCL7_q3212.hex") module_7 (
    .Clock(Clock), 
    .Input_Pixel(Input_Pixel_7), 
    .Input_Valid(Input_Valid), 
    .Input_Finish(Input_Finish), 
    .Input_Reset(Input_Reset), 
    .Output_0(Output_0_7), 
    .Output_1(Output_1_7), 
    .Output_2(Output_2_7), 
    .Output_3(Output_3_7), 
    .Output_4(Output_4_7), 
    .Output_5(Output_5_7), 
    .Output_6(Output_6_7), 
    .Output_7(Output_7_7), 
    .Output_8(Output_8_7), 
    .Output_9(Output_9_7), 
    .Output_Valid(out_v[7]), 
    .Output_Finish(out_f[7])
    );
	 
wire[31:0] Output_0_8, Output_1_8, Output_2_8, Output_3_8, Output_4_8, Output_5_8, Output_6_8, Output_7_8, Output_8_8, Output_9_8 ;	 
fullyconnectedmodule #("FCL8_q3212.hex") module_8 (
    .Clock(Clock), 
    .Input_Pixel(Input_Pixel_8), 
    .Input_Valid(Input_Valid), 
    .Input_Finish(Input_Finish), 
    .Input_Reset(Input_Reset), 
    .Output_0(Output_0_8), 
    .Output_1(Output_1_8), 
    .Output_2(Output_2_8), 
    .Output_3(Output_3_8), 
    .Output_4(Output_4_8), 
    .Output_5(Output_5_8), 
    .Output_6(Output_6_8), 
    .Output_7(Output_7_8), 
    .Output_8(Output_8_8), 
    .Output_9(Output_9_8), 
    .Output_Valid(out_v[8]), 
    .Output_Finish(out_f[8])
    );
wire[31:0] Output_0_9, Output_1_9, Output_2_9, Output_3_9, Output_4_9, Output_5_9, Output_6_9, Output_7_9, Output_8_9, Output_9_9 ;	 
fullyconnectedmodule #("FCL9_q3212.hex") module_9 (
    .Clock(Clock), 
    .Input_Pixel(Input_Pixel_9), 
    .Input_Valid(Input_Valid), 
    .Input_Finish(Input_Finish), 
    .Input_Reset(Input_Reset), 
    .Output_0(Output_0_9), 
    .Output_1(Output_1_9), 
    .Output_2(Output_2_9), 
    .Output_3(Output_3_9), 
    .Output_4(Output_4_9), 
    .Output_5(Output_5_9), 
    .Output_6(Output_6_9), 
    .Output_7(Output_7_9), 
    .Output_8(Output_8_9), 
    .Output_9(Output_9_9), 
    .Output_Valid(out_v[9]), 
    .Output_Finish(out_f[9])
    );
wire[31:0] Output_0_10, Output_1_10, Output_2_10, Output_3_10, Output_4_10, Output_5_10, Output_6_10, Output_7_10, Output_8_10, Output_9_10 ;	 
fullyconnectedmodule #("FCL10_q3212.hex") module_10 (
    .Clock(Clock), 
    .Input_Pixel(Input_Pixel_10), 
    .Input_Valid(Input_Valid), 
    .Input_Finish(Input_Finish), 
    .Input_Reset(Input_Reset), 
    .Output_0(Output_0_10), 
    .Output_1(Output_1_10), 
    .Output_2(Output_2_10), 
    .Output_3(Output_3_10), 
    .Output_4(Output_4_10), 
    .Output_5(Output_5_10), 
    .Output_6(Output_6_10), 
    .Output_7(Output_7_10), 
    .Output_8(Output_8_10), 
    .Output_9(Output_9_10), 
    .Output_Valid(out_v[10]), 
    .Output_Finish(out_f[10])
    );
	 
wire[31:0] Output_0_11, Output_1_11, Output_2_11, Output_3_11, Output_4_11, Output_5_11, Output_6_11, Output_7_11, Output_8_11, Output_9_11 ;
	 
fullyconnectedmodule #("FCL11_q3212.hex") module_11   (
    .Clock(Clock), 
    .Input_Pixel(Input_Pixel_11), 
    .Input_Valid(Input_Valid), 
    .Input_Finish(Input_Finish), 
    .Input_Reset(Input_Reset), 
    .Output_0(Output_0_11), 
    .Output_1(Output_1_11), 
    .Output_2(Output_2_11), 
    .Output_3(Output_3_11), 
    .Output_4(Output_4_11), 
    .Output_5(Output_5_11), 
    .Output_6(Output_6_11), 
    .Output_7(Output_7_11), 
    .Output_8(Output_8_11), 
    .Output_9(Output_9_11), 
    .Output_Valid(out_v[11]), 
    .Output_Finish(out_f[11])
    );
	reg tempv,tempf;
	
always @(posedge Clock)
	begin
		Output_Valid <=tempv;
		tempv <= out_v[0] && out_v[1] && out_v[2] && out_v[3] && out_v[4] && out_v[5] && out_v[6] && out_v[7] && out_v[8] && out_v[9] && out_v[10] && out_v[11];
		
		Output_Finish <=tempf;
		tempf <= out_f[0] && out_f[1] && out_f[2] && out_f[3] && out_f[4] && out_f[5] && out_f[6] && out_f[7] && out_f[8] && out_f[9] && out_f[10] && out_f[11];
		if(tempf==1&&tempv==1&&Input_Reset==0)//Output_Valid==1 && Output_Finish ==1 &&
		begin
		Output_0<= Output_0_0 + Output_0_1 + Output_0_2 + Output_0_3 +Output_0_4 + Output_0_5 + Output_0_6 + Output_0_7 + Output_0_8 + Output_0_9 +Output_0_10 + Output_0_11 + 'hfff719d8;
		Output_1<= Output_1_0 + Output_1_1 + Output_1_2 + Output_1_3 +Output_1_4 + Output_1_5 + Output_1_6 + Output_1_7 + Output_1_8 + Output_1_9 +Output_1_10 + Output_1_11 + 'hffd8bc48;
		Output_2<= Output_2_0 + Output_2_1 + Output_2_2 + Output_2_3 +Output_2_4 + Output_2_5 + Output_2_6 + Output_2_7 + Output_2_8 + Output_2_9 +Output_2_10 + Output_2_11 + 'hff96ff42;
		Output_3<= Output_3_0 + Output_3_1 + Output_3_2 + Output_3_3 +Output_3_4 + Output_3_5 + Output_3_6 + Output_3_7 + Output_3_8 + Output_3_9 +Output_3_10 + Output_3_11 + 'hff79b5bb;
		Output_4<= Output_4_0 + Output_4_1 + Output_4_2 + Output_4_3 +Output_4_4 + Output_4_5 + Output_4_6 + Output_4_7 + Output_4_8 + Output_4_9 +Output_4_10 + Output_4_11 + 'hffd891fa;
		Output_5<= Output_5_0 + Output_5_1 + Output_5_2 + Output_5_3 +Output_5_4 + Output_5_5 + Output_5_6 + Output_5_7 + Output_5_8 + Output_5_9 +Output_5_10 + Output_5_11 + 'hff946875;
		Output_6<= Output_6_0 + Output_6_1 + Output_6_2 + Output_6_3 +Output_6_4 + Output_6_5 + Output_6_6 + Output_6_7 + Output_6_8 + Output_6_9 +Output_6_10 + Output_6_11 + 'hffaa971c;
		Output_7<= Output_7_0 + Output_7_1 + Output_7_2 + Output_7_3 +Output_7_4 + Output_7_5 + Output_7_6 + Output_7_7 + Output_7_8 + Output_7_9 +Output_7_10 + Output_7_11 + 'hffd955a4;
		Output_8<= Output_8_0 + Output_8_1 + Output_8_2 + Output_8_3 +Output_8_4 + Output_8_5 + Output_8_6 + Output_8_7 + Output_8_8 + Output_8_9 +Output_8_10 + Output_8_11 + 'hfff60b4e;
		Output_9<= Output_9_0 + Output_9_1 + Output_9_2 + Output_9_3 +Output_9_4 + Output_9_5 + Output_9_6 + Output_9_7 + Output_9_8 + Output_9_9 +Output_9_10 + Output_9_11 + 'hffca9314;
		end
		if(Input_Reset==1)
		begin
				Output_0<=0;
				Output_1<=0;
				Output_2<=0;
				Output_3<=0;
				Output_4<=0;
				Output_5<=0;
				Output_6<=0;
				Output_7<=0;
				Output_8<=0;
				Output_9<=0;
		end
		
	end
	 



endmodule
