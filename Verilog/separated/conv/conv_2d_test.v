`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:01:38 01/24/2018
// Design Name:   conv_2d
// Module Name:   C:/Users/Blind man/Desktop/FYP_Section/deep/Lenet_2/lent_infrence/conv_2d_test.v
// Project Name:  lent_infrence
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: conv_2d
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module conv_2d_test;

	// Inputs
	reg [15:0] image_input_pixel;
	reg [15:0] kernal_input;
	reg kernal_input_valid;
	reg image_input_valid;
	reg kernal_complete;
	reg image_complete;
	reg clk;
	reg [10:0] i;
	// Outputs
	wire [31:0] conv_output_pixel;

	// Instantiate the Unit Under Test (UUT)
	conv_2d uut (
		.image_input_pixel(image_input_pixel), 
		.kernal_input(kernal_input), 
		.kernal_input_valid(kernal_input_valid), 
		.image_input_valid(image_input_valid), 
		.kernal_complete(kernal_complete), 
		.image_complete(image_complete), 
		.clk(clk), 
		.conv_output_pixel(conv_output_pixel)
	);

	initial begin
		// Initialize Inputs
		image_input_pixel = 0;
		kernal_input = 0;
		kernal_input_valid = 0;
		image_input_valid = 0;
		kernal_complete = 0;
		image_complete = 0;
		clk = 0;
		i=0;
		

		// Wait 100 ns for global reset to finish
		#100;
		kernal_complete=1;
				for(i=1;i<40;i=i+1)
					begin
						#10
						image_input_pixel=i;			
					end
        kernal_complete=1;
		  
		// Add stimulus here

	end
      
			always 
			begin
			#5 clk=~clk;
	
		end
		
		
endmodule

