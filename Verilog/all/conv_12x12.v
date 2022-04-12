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
module conv_12x12#(parameter input_bits=16,
								output_bits=32,
								image_width=12,
							 kernal_select="kernel_c2_1_6_q3212.txt"//"kernel_c1_1.txt"
								)(
    input signed[input_bits-1:0] input_port,
	 input signed [31:0] bias,
	 input valid,
	 input  clk,
	 input reset,
	 
    output reg signed [output_bits-1:0] output_port,
    output reg finish,
    output reg invalid

    );
	 

	 
	 integer i;
	 reg signed [input_bits-1:0] buffer[0:image_width*5-1+5];
	 reg [15:0] counter;
	 reg [10:0] packet_counter;
	 
	 reg signed [input_bits-1:0] wire_1[0:4];
	 reg signed [input_bits-1:0] wire_2[0:4];
	 reg signed [input_bits-1:0] wire_3[0:4];
	 reg signed [input_bits-1:0] wire_4[0:4];
	 reg signed [input_bits-1:0] wire_5[0:4];
	 reg signed [output_bits-1:0] out[0:4];
	 reg signed [16:0] kernel[0:24];
	 reg im_f;
	initial begin

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
		
		wire_1[j]<=buffer[j+image_width];
		wire_2[j]<=buffer[j+image_width*2];
		wire_3[j]<=buffer[j+image_width*3];
		wire_4[j]<=buffer[j+image_width*4];
		wire_5[j]<=buffer[j+image_width*5];
		end
	 	
	end
	
always@(*)
	begin
	if(counter >image_width*image_width+image_width+1)
		im_f<=0;
	if(counter==image_width*image_width)
		im_f<=1;
		if(reset==1)
			im_f<=0;
		end
		
always@(posedge clk)	
	begin

	if (counter>image_width*5+5+1)
		begin
			if(valid==1||im_f==1)
			begin
				invalid<=0;
				packet_counter<=packet_counter+1;
			end
			else
			invalid<=1;
		end
	if (packet_counter>image_width-2)
		begin
				packet_counter<=0;
				if (counter<image_width*image_width+2)
					begin
						invalid <=0;
						
					end
		end
	else if(packet_counter>image_width-5-1)
	begin
		invalid<=1;
	
	end	
		
	if (counter==image_width*5+5+1)
		begin
			invalid<=0;
		end
		
	else if(counter >image_width*image_width+image_width+1)
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
										
							out[0]<=wire_1[0]*kernel[24] + wire_1[1]*kernel[23] + wire_1[2]*kernel[22] + wire_1[3]*kernel[21] + wire_1[4]*kernel[20];
							out[1]<=wire_2[0]*kernel[19] + wire_2[1]*kernel[18] + wire_2[2]*kernel[17] + wire_2[3]*kernel[16] + wire_2[4]*kernel[15];
							out[2]<=wire_3[0]*kernel[14] + wire_3[1]*kernel[13] + wire_3[2]*kernel[12] + wire_3[3]*kernel[11] + wire_3[4]*kernel[10];
							out[3]<=wire_4[0]*kernel[9] +  wire_4[1]*kernel[8] + wire_4[2]*kernel[7] + wire_4[3]*kernel[6] + wire_4[4]*kernel[5];
							out[4]<=wire_5[0]*kernel[4] + wire_5[1]*kernel[3] + wire_5[2]*kernel[2] + wire_5[3]*kernel[1] + wire_5[4]*kernel[0];
			output_port<=out[0]+out[1]+out[2]+out[3]+out[4]+bias;
			
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
