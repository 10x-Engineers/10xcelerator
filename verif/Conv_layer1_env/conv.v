`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:42:41 02/12/2018 
// Design Name: 
// Module Name:    conv 
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
//myadd#(parameter M_test= `MWidth, N_test= M_test+2);
module conv#(parameter input_bits=16,
								output_bits=32,
								image_width=28,
							 kernal_select="1s_kernel.hex"
								)(
    input [input_bits-1:0] input_port,
	 input signed [31:0] bias,
	 input valid,
	 input  clk,
	 input reset,
	 
    output reg signed [output_bits-1:0] output_port,
    output reg finish,
    output reg invalid

    );
	 

	 
	 integer i;
	 reg [input_bits-1:0] buffer[0:image_width*5-1+5];
	 reg [15:0] counter;
	 reg [10:0] packet_counter;
	 
	 reg [input_bits-1:0] wire_1[0:4];
	 reg [input_bits-1:0] wire_2[0:4];
	 reg [input_bits-1:0] wire_3[0:4];
	 reg [input_bits-1:0] wire_4[0:4];
	 reg [input_bits-1:0] wire_5[0:4];
	 reg signed[output_bits-1:0] out[0:4];
	 reg signed [31:0] kernel[0:24];
	 reg im_f;
	initial begin
				/*case(kernal_select)
				
						2'b00:$readmemh("kernel_c1_1.txt",kernel);
						2'b01:$readmemh("kernel_c1_2.txt",kernel);
						default :$readmemh("kernel_c1_1.txt",kernel);
				endcase*/
				$readmemh(kernal_select,kernel);
				for(i=0;i<image_width*5+5;i=i+1)
					begin
						buffer[i]<=0;				
					end
					for (i=0;i<5;i=i+1)
					begin
						out[i]<=0;
					end
					output_port<=0;
					counter<=0;
					invalid<=1;
					packet_counter<=0;
					finish<=0;
					im_f<=0;
				end
					
			
	integer j;
	always@(*)
	begin
	
	for (j=0;j<5;j=j+1)
		begin
		
		wire_1[j]<=buffer[j+28];
		// $display("wire 1 : %h ",buffer[j+28]);
		wire_2[j]<=buffer[j+28*2];
		// $display("wire 2 : %h ",buffer[j+28*2]);
		wire_3[j]<=buffer[j+28*3];
		// $display("wire 3 : %h ",buffer[j+28*3]);
		wire_4[j]<=buffer[j+28*4];
			// $display("wire 4 : %h ",buffer[j+28*4]);
		wire_5[j]<=buffer[j+28*5];
			// $display("wire 5 : %h ",buffer[j+28*5]);
		end
	 	
	end
	
always@(*)
	begin
	
	if(counter >814)
		im_f<=0;
	if(counter==784)
		im_f<=1;
		if(reset==1)
			im_f<=0;
		end
		
always@(posedge clk)	
	begin


	if (counter>147)
		begin
			if(valid==1||im_f==1)
			begin
				invalid<=0;
				packet_counter<=packet_counter+1;
			end
			else
			invalid<=1;
		end
	if (packet_counter>26)
		begin
				packet_counter<=0;
				if (counter<816)
					begin
						invalid <=0;
						
					end
		end
	else if(packet_counter>22)
	begin
		invalid<=1;
	
	end	
		
	if (counter==147)
		begin
			invalid<=0;
		end
		
	else if(counter >814)
		begin
			invalid<=1;
			finish<=1;
			//im_f<=1;
		end
	if (valid==1 ||im_f==1)
		begin
			buffer[0]<= input_port;
				for(i=0;i<image_width*5+5-1;i=i+1)
					begin
						buffer[i+1]<=buffer[i];				
					end
			//output_port<=buffer[image_width-1];
							//conv kernal //kernal Formate Q18.12;
							/*out[0]<=wire_1[0]*'hffffee9e + wire_1[1]*'h0000072f + wire_1[2]*'h000007ff + wire_1[3]*'hfffffaa5 + wire_1[4]*'hfffff436;
							out[1]<=wire_2[0]*'hfffffd56 + wire_2[1]*'h000011ee + wire_2[2]*'h0000160a + wire_2[3]*'h00000dbd + wire_2[4]*'hfffffb16;
							out[2]<=wire_3[0]*'h00000734 + wire_3[1]*'h000014a5 + wire_3[2]*'h00001a66 + wire_3[3]*'h00000ea5 + wire_3[4]*'hfffff9cc;
							out[3]<=wire_4[0]*'h0000032d + wire_4[1]*'h0000140b + wire_4[2]*'h00001923 + wire_4[3]*'h00000e5a + wire_4[4]*'hfffff16b;
							out[4]<=wire_5[0]*'hfffff2e0 + wire_5[1]*'h000002c6 + wire_5[2]*'h00000a7c + wire_5[3]*'hfffffad4 + wire_5[4]*'hffffe311;*/

							out[0]<=wire_1[0]*kernel[24] + wire_1[1]*kernel[23] + wire_1[2]*kernel[22] + wire_1[3]*kernel[21] + wire_1[4]*kernel[20];
							out[1]<=wire_2[0]*kernel[19] + wire_2[1]*kernel[18] + wire_2[2]*kernel[17] + wire_2[3]*kernel[16] + wire_2[4]*kernel[15];
							out[2]<=wire_3[0]*kernel[14] + wire_3[1]*kernel[13] + wire_3[2]*kernel[12] + wire_3[3]*kernel[11] + wire_3[4]*kernel[10];
							out[3]<=wire_4[0]*kernel[9] +  wire_4[1]*kernel[8] + wire_4[2]*kernel[7] + wire_4[3]*kernel[6] + wire_4[4]*kernel[5];
							out[4]<=wire_5[0]*kernel[4] + wire_5[1]*kernel[3] + wire_5[2]*kernel[2] + wire_5[3]*kernel[1] + wire_5[4]*kernel[0];
			output_port<=out[0]+out[1]+out[2]+out[3]+out[4]+bias;
			//	$display("outptut in DUT  : %h ",output_port);
			counter<=counter+1;
		end

	
		
	if(reset==1)
				begin
				for(i=0;i<image_width*5+5;i=i+1)
					begin
						buffer[i]<=0;				
					end
					output_port<=0;
					counter<=0;
					invalid<=1;
					packet_counter<=0;
					finish<=0;
					//im_f<=0;
					end
	end
	
	
	
	
endmodule
