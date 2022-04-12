`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:28:08 03/07/2018
// Design Name:   conv_12x12
// Module Name:   C:/Users/Blind man/Desktop/FYP/conv2d/test_conv_para.v
// Project Name:  conv2d
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: conv_12x12
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_conv_para;

	// Inputs
	reg [31:0] input_port;
	reg [31:0] bias;
	reg valid;
	reg clk;
	reg reset;
	
	reg signed [31:0] image_input[0:143];
	// Outputs
	wire [31:0] output_port;
	wire finish;
	wire invalid;
	integer outfile,i;

	// Instantiate the Unit Under Test (UUT)
	conv_12x12 uut (
		.input_port(input_port), 
		.bias(bias), 
		.valid(valid), 
		.clk(clk), 
		.reset(reset), 
		.output_port(output_port), 
		.finish(finish), 
		.invalid(invalid)
	);

	initial begin
		// Initialize Inputs
		$readmemh("c2_k_1out.hex",image_input);
		outfile = $fopen("out_k2_1.txt","w");
		//input_port = 'h00010000;
		bias = 0;
		valid = 1;
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		
			for(i=0;i<144;i=i+1)
					begin
						
						//valid=1;
						input_port=image_input[i];
						#20;						
					end
		 valid = 0;
        
		// Add stimulus here

	end
	
	
		initial
			#17000 $finish;

	
	always 
			begin
			#10 clk=~clk;
	
		end
		
				always@(posedge clk)
			begin
					if(invalid==0) 
					$fwrite(outfile,"%h\n",output_port);
			end
			
	
		
		
		
      
endmodule

