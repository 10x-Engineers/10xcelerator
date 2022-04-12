`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:30:07 07/30/2018
// Design Name:   conv_12x12
// Module Name:   C:/Users/BLINDMAN/Desktop/quswar/conv2d/conv12X12.v
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

module conv12X12;

	// Inputs
	integer outfile;
	reg [15:0] input_port;
	reg [31:0] bias;
	reg valid;
	reg clk;
	reg reset;
	reg[15:0] image_input[0:143];
	reg[32:0]i;
	// Outputs
	wire [31:0] output_port;
	wire finish;
	wire invalid;

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
		$readmemh("k_1out.hex",image_input);
		outfile = $fopen("conv12x12.hex","w");
		input_port = 0;
		bias = 0;
		valid = 0;
		clk = 0;
		reset = 0;
		i=0;
		valid=1;
		
		
		//input_port='h1000;
				for(i=0;i<144;i=i+1)
					begin
						
						//valid=1;
						input_port=image_input[i];
						#20;						
					end
				valid=0;

		// Wait 100 ns for global reset to finish
	
        
		// Add stimulus here

	end
	
	
			always 
			begin
			#10 clk=~clk;
	
		end
		
		initial
			#17000 $finish;
      	always@(posedge clk)
			begin
					if(invalid==0) 
					$fwrite(outfile,"%h\n",output_port);
			end


	
	
      
endmodule

