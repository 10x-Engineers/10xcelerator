`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:06:43 03/06/2018
// Design Name:   conv_layer_1
// Module Name:   C:/Users/Blind man/Desktop/FYP/conv2d/Conv_layer_test.v
// Project Name:  conv2d
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: conv_layer_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Conv_layer_test;

	// Inputs
	reg [15:0] input_image;
	reg valid_input;
	reg clk_global;
	reg reset_layer;
	reg[15:0] image_input[0:783];
	
	// Outputs
	
	wire [31:0] out1;
	wire [31:0] out2;
	wire [31:0] out3;
	wire [31:0] out4;
	wire [31:0] out5;
	wire [31:0] out6;
	
	wire finish;
	wire invalid;
	integer i,outfile1,outfile2,outfile3,outfile4,outfile5,outfile6;
	
	// Instantiate the Unit Under Test (UUT)
	conv_layer_1 uut (
		.input_image(input_image), 
		.valid_input(valid_input), 
		.clk_global(clk_global), 
		.reset_layer(reset_layer), 
		.out1(out1),
		.out2(out2),
		.out3(out3),
		.out4(out4),
		.out5(out5),
		.out6(out6),
		.invalid(invalid),
		.finish(finish)
	);

	initial begin
		// Initialize Inputs
		$readmemh("test_img_9.txt",image_input);
		outfile1 = $fopen("k_1out.hex","w");
		outfile2 = $fopen("k_2out.hex","w");
		outfile3 = $fopen("k_3out.hex","w");
		outfile4 = $fopen("k_4out.hex","w");
		outfile5 = $fopen("k_5out.hex","w");
		outfile6 = $fopen("k_6out.hex","w");
		input_image = 0;
		valid_input = 0;
		clk_global = 0;
		reset_layer = 0;
		valid_input=1;
		
				for(i=0;i<784;i=i+1)
					begin
						input_image =image_input[i];
						#20;						
					end
				valid_input=0;
	end
				
		always@(posedge clk_global)
			begin
					if(invalid==0)
						begin
					$fwrite(outfile1,"%h\n",out1);
					$fwrite(outfile2,"%h\n",out2);
					$fwrite(outfile3,"%h\n",out3);
					$fwrite(outfile4,"%h\n",out4);
					$fwrite(outfile5,"%h\n",out5);
					$fwrite(outfile6,"%h\n",out6);
						end
			end
	
     
	  	always 
			#10 clk_global=~clk_global;
	
			initial
			#17000 $finish;
      
	  
endmodule

