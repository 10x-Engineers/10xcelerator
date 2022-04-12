`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:22:26 03/25/2018
// Design Name:   SamplingLayer2
// Module Name:   C:/Users/Quswar Mahmood Abid/Documents/GitHub/SamplingModule/Verilog/SamplingModule/SamplingLayer2Test.v
// Project Name:  SamplingModule
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SamplingLayer2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SamplingLayer2Test;

	// Inputs
	reg Clock;
	reg Input_Valid;
	reg Input_Finish;
	reg Input_Reset;
	reg [31:0]Input_Pixel_1;
	reg [31:0]Input_Pixel_2;
	reg [31:0]Input_Pixel_3;
	reg [31:0]Input_Pixel_4;
	reg [31:0]Input_Pixel_5;
	reg [31:0]Input_Pixel_6;
	
	//Outputs
	wire [31:0] Output_Pixel_1;
	wire [31:0] Output_Pixel_2;
	wire [31:0] Output_Pixel_3;
	wire [31:0] Output_Pixel_4;
	wire [31:0] Output_Pixel_5;
	wire [31:0] Output_Pixel_6;
	wire Output_Valid;
	wire Output_Finish;
	
	//Loopers
	reg  [31:0] i;
	
	
	//Intermediatte Memory Buffer
	reg [31:0] Image_Input_1 [0:575];
	reg [31:0] Image_Input_2 [0:575];
	reg [31:0] Image_Input_3 [0:575];
	reg [31:0] Image_Input_4 [0:575];
	reg [31:0] Image_Input_5 [0:575];
	reg [31:0] Image_Input_6 [0:575];
	
	//File Intergers
	integer Image_Output_1;
	integer Image_Output_2;
	integer Image_Output_3;
	integer Image_Output_4;
	integer Image_Output_5;
	integer Image_Output_6;
	
	// Instantiate the Unit Under Test (UUT)
	SamplingLayer2 uut (
		.Clock(Clock),
		.Input_Valid(Input_Valid), 
		.Input_Finish(Input_Finish),
		.Input_Reset(Input_Reset),
		.Input_Pixel_1(Input_Pixel_1),
		.Input_Pixel_2(Input_Pixel_2),
		.Input_Pixel_3(Input_Pixel_3),
		.Input_Pixel_4(Input_Pixel_4),
		.Input_Pixel_5(Input_Pixel_5),
		.Input_Pixel_6(Input_Pixel_6),
		.Output_Pixel_1(Output_Pixel_1),
		.Output_Pixel_2(Output_Pixel_2),
		.Output_Pixel_3(Output_Pixel_3),
		.Output_Pixel_4(Output_Pixel_4),
		.Output_Pixel_5(Output_Pixel_5),
		.Output_Pixel_6(Output_Pixel_6),		
		.Output_Valid(Output_Valid), 
		.Output_Finish(Output_Finish)
	);

	initial begin
		$readmemh("k_1out.hex",Image_Input_1);
		$readmemh("k_2out.hex",Image_Input_2);
		$readmemh("k_3out.hex",Image_Input_3);
		$readmemh("k_4out.hex",Image_Input_4);
		$readmemh("k_5out.hex",Image_Input_5);
		$readmemh("k_6out.hex",Image_Input_6);
		
		Image_Output_1 = $fopen("s_1out_2.hex","w");
		Image_Output_2 = $fopen("s_2out_2.hex","w");
		Image_Output_3 = $fopen("s_3out_2.hex","w");
		Image_Output_4 = $fopen("s_4out_2.hex","w");
		Image_Output_5 = $fopen("s_5out_2.hex","w");
		Image_Output_6 = $fopen("s_6out_2.hex","w");
		
		Clock = 'd1;
		Input_Valid = 'd1;
		Input_Finish = 'd0;
		Input_Reset = 'd0;
		
		if (Input_Valid == 'd1)
		begin
			for(i=0;i<576;i=i+1)
			begin
				Input_Pixel_1 = Image_Input_1[i];
				Input_Pixel_2 = Image_Input_2[i];
				Input_Pixel_3 = Image_Input_3[i];
				Input_Pixel_4 = Image_Input_4[i];
				Input_Pixel_5 = Image_Input_5[i];
				Input_Pixel_6 = Image_Input_6[i];		
				#10;
			end
			//Input_Valid = 'd0;
			Input_Finish = 'd1;
		end
		
	end

	always@(posedge Clock)
	begin
		if(Output_Valid == 1)
		begin
			$fwrite(Image_Output_1,"%h\n",Output_Pixel_1);
			$fwrite(Image_Output_2,"%h\n",Output_Pixel_2);
			$fwrite(Image_Output_3,"%h\n",Output_Pixel_3);
			$fwrite(Image_Output_4,"%h\n",Output_Pixel_4);
			$fwrite(Image_Output_5,"%h\n",Output_Pixel_5);
			$fwrite(Image_Output_6,"%h\n",Output_Pixel_6);
		end
	end

	//ALWAYS Happening:
	always 		
	#5 Clock=~Clock;
	
endmodule

