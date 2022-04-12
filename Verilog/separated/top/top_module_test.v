`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:39:55 03/29/2018
// Design Name:   Topmodule
// Module Name:   C:/Users/Blind man/Desktop/FYP/conv2d/top_module_test.v
// Project Name:  conv2d
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Topmodule
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top_module_test;

	// Inputs
	reg [15:0] imagein;
	reg reset;
	reg clk;
	reg valid;
	integer i,outfile1;//,outfile2,outfile3,outfile4,outfile5,outfile6,outfile7,outfile8,outfile9,outfile10,outfile11,outfile12;
	reg[15:0] image_input[0:783];
	reg print;
	// Outputs
	wire [31:0] out1;
	wire [31:0] out2;
	wire [31:0] out3;
	wire [31:0] out4;
	wire [31:0] out5;
	wire [31:0] out6;
	wire [31:0] out7;
	wire [31:0] out8;
	wire [31:0] out9;
	wire [31:0] out10;
	//wire [31:0] out11;
	//wire [31:0] out12;
	wire [4:0] index_out;
	wire index_valid;




	wire invalid;
	wire finish;
	//wire valid_o_c1;
	//wire finsih_o_c1;

	// Instantiate the Unit Under Test (UUT)
	Topmodule uut (
		.imagein(imagein), 
		.reset(reset), 
		.clk(clk), 
		.valid(valid), 
		.out1(out1), 
		.out2(out2), 
		.out3(out3), 
		.out4(out4), 
		.out5(out5), 
		.out6(out6),
		.out7(out7),
		.out8(out8),
		.out9(out9),
		.out10(out10),
		//.out11(out11),
		//.out12(out12),
		.invalid(invalid), 
		.finish(finish),
		.index_out(index_out),
		.index_valid(index_valid)
	);

	initial begin
		// Initialize Inputs
		$readmemh("image_no_70.hex",image_input);  //test_img_9.txt////////little error append 0000 at start of file
		outfile1 = $fopen("data_f_70.hex","w");
		//outfile2 = $fopen("Xilix_out_c2.hex","w");
		//outfile3 = $fopen("Xilix_out_c3.hex","w");
		//outfile4 = $fopen("Xilix_out_c4.hex","w");
		//outfile5 = $fopen("Xilix_out_c5.hex","w");
		//outfile6 = $fopen("Xilix_out_c6.hex","w");
		//outfile7 = $fopen("Xilix_out_c7.hex","w");
		//outfile8 = $fopen("Xilix_out_c8.hex","w");
		//outfile9 = $fopen("Xilix_out_c9.hex","w");
		//outfile10 = $fopen("Xilix_out_c10.hex","w");
		//outfile11 = $fopen("Xilix_out_c11.hex","w");
		//outfile12 = $fopen("Xilix_out_c12.hex","w");
		
		print<=0;
		imagein = 0;
		reset = 0;
		clk = 0;
		valid = 1;

		// Wait 100 ns for global reset to finish
			for(i=0;i<784;i=i+1)
					begin
						imagein =image_input[i];
						#20;						
					end
				valid=0;
        
		// Add stimulus here

	end
		always@(posedge invalid)
			print<=1;
		
		always@(posedge clk)
			begin
					if(print==1 && invalid==1)
					//if (invalid==0)
						begin
					$fwrite(outfile1,"%h\n",out1);
					$fwrite(outfile1,"%h\n",out2);
					$fwrite(outfile1,"%h\n",out3);
					$fwrite(outfile1,"%h\n",out4);
					$fwrite(outfile1,"%h\n",out5);
					$fwrite(outfile1,"%h\n",out6);
					$fwrite(outfile1,"%h\n",out7);
					$fwrite(outfile1,"%h\n",out8);
					$fwrite(outfile1,"%h\n",out9);
					$fwrite(outfile1,"%h\n",out10);
					//$fwrite(outfile11,"%h\n",out11[15:0]);
					//$fwrite(outfile12,"%h\n",out12[15:0]);
					//$fwrite(outfile1,"%h\n",out7);
					//$fwrite(outfile1,"%h\n",out8);
					//$fwrite(outfile1,"%h\n",out9);
					//$fwrite(outfile1,"%h\n",out10);
					print<=0;
					

						end
			end
	
     
	  	always 
			#10 clk=~clk;
	
			initial
			#21000 $finish;
      
endmodule

