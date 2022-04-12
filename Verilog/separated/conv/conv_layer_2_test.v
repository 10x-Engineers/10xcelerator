`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:12:42 05/14/2018
// Design Name:   conv_layer_2_kernal
// Module Name:   C:/Users/BLINDMAN/Desktop/FYP/conv2d/conv_layer_2_test.v
// Project Name:  conv2d
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: conv_layer_2_kernal
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module conv_layer_2_test;

	// Inputs
	reg [15:0] image_kernal_1;
	reg [15:0] image_kernal_2;
	reg [15:0] image_kernal_3;
	reg [15:0] image_kernal_4;
	reg [15:0] image_kernal_5;
	reg [15:0] image_kernal_6;
	reg valid;
	reg clk_global;
	reg reset;
	reg [31:0] bias;
	reg[15:0] image_input_1[0:143];
	reg[15:0] image_input_2[0:143];
	reg[15:0] image_input_3[0:143];
	reg[15:0] image_input_4[0:143];
	reg[15:0] image_input_5[0:143];
	reg[15:0] image_input_6[0:143];
	// Outputs
	wire [31:0] out_k9;
	wire finish;
	wire invalid;
	integer i,outfile;
	
	// Instantiate the Unit Under Test (UUT)
	conv_layer_2_kernal uut (
		.image_kernal_1(image_kernal_1), 
		.image_kernal_2(image_kernal_2), 
		.image_kernal_3(image_kernal_3), 
		.image_kernal_4(image_kernal_4), 
		.image_kernal_5(image_kernal_5), 
		.image_kernal_6(image_kernal_6), 
		.valid(valid), 
		.clk_global(clk_global), 
		.reset(reset), 
		.bias(bias), 
		.out_k9(out_k9), 
		.finish(finish), 
		.invalid(invalid)
	);

	initial begin
		// Initialize Inputs
		$readmemh("k_1out.hex",image_input_1);
		$readmemh("k_2out.hex",image_input_2);
		$readmemh("k_3out.hex",image_input_3);
		$readmemh("k_4out.hex",image_input_4);
		$readmemh("k_5out.hex",image_input_5);
		$readmemh("k_6out.hex",image_input_6);
		outfile = $fopen("C2_out_k1.hex","w");
		image_kernal_1 = 0;
		image_kernal_2 = 0;
		image_kernal_3 = 0;
		image_kernal_4 = 0;
		image_kernal_5 = 0;
		image_kernal_6 = 0;
		valid = 1;
		clk_global = 0;
		reset = 0;
		bias = 0;
		
		for(i=0;i<144;i=i+1)
					begin
						image_kernal_1 =image_input_1[i];
						image_kernal_2 =image_input_2[i];
						image_kernal_3 =image_input_3[i];
						image_kernal_4 =image_input_4[i];
						image_kernal_5 =image_input_5[i];
						image_kernal_6 =image_input_6[i];
						#20;						
					end
				valid=0;
		
		
		


		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	
	
		  	always 
			#10 clk_global=~clk_global;
	
			initial
			#17000 $finish;
  always@(posedge clk_global)
			begin
					if(invalid==0)
						begin
					$fwrite(outfile,"%h\n",out_k9);

						end
			end
      
endmodule

