`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:03:39 02/12/2018
// Design Name:   conv
// Module Name:   C:/Users/Blind man/Desktop/FYP_Section/deep/conv2d/conv2d/conv_test.v
// Project Name:  conv2d
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: conv
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module conv_test;

	integer outfile;
	// Inputs
	reg [15:0] input_port;
	reg valid;
	reg clk;
	reg reset;
	reg[32:0]i;
	reg[15:0] image_input[0:783];
	reg[31:0] bias;
	// Outputs
	wire [31:0] output_port;
	wire invalid;
	wire finish;
	// Instantiate the Unit Under Test (UUT)
	conv uut (
		.input_port(input_port), 
		.valid(valid), 
		.clk(clk), 
		.reset(reset), 
		.output_port(output_port),
		.invalid(invalid),
		.bias(bias),
		.finish(finish)	

	);


	initial begin
		// Initialize Inputs
		$readmemh("test_img_9.txt",image_input);
		outfile = $fopen("k_1out.hex","w");
		input_port = 0;
		valid = 0;
		clk = 0;
		reset = 0;
		bias=0;
		i=0;

		// Wait 100 ns for global reset to finish

		valid=1;
		
		
		//input_port='h1000;
				for(i=0;i<784;i=i+1)
					begin
						
						//valid=1;
						input_port=image_input[i];
						#20;						
					end
				valid=0;
        
		// Add stimulus here

	end
	
		always 
			begin
			#10 clk=~clk;
	
		end


			
		always@(posedge clk)
			begin
					if(invalid==0) 
					$fwrite(outfile,"%h\n",output_port);
			end
			
		initial
			#17000 $finish;
      
endmodule

