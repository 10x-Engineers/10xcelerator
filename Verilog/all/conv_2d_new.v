`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:43:13 02/08/2018 
// Design Name: 
// Module Name:    conv_2d_new 
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
module conv_2d_new(
    input [15:0] input_pixel,
    input CLK,
    input Valid,
    output packet_done,
    output reg [31:0] data_out,
    input reset,
    output finish,
    output invalid
    );
	 initial begin
					for(j=0;j<144;j=j+1)
							begin
								buffer[j]<=0;				
							end
					data_out<=0;
	 end
	 
	 genvar i;
	 
	 reg[15:0] j;
	 reg [15:0] output_port;
	 wire [15:0] buffer_input;
	 reg [15:0]buffer[0:144];
	 
	 //
	 wire[15:0] wire_1[0:5];
	 wire[15:0] wire_2[0:5];
	 wire[15:0] wire_3[0:5];
	 wire[15:0] wire_4[0:5];
	 wire[15:0] wire_5[0:5];
	 
	generate 
	 for (i=0;i<5;i=i+1)
		begin
			assign wire_1[i]=buffer[28+i];
	 
			assign wire_2[i]=buffer[28*2+i];
			assign wire_3[i]=buffer[28*3+i];
			assign wire_4[i]=buffer[28*4+i];
			assign wire_5[i]=buffer[28*5+i];
		end
	endgenerate
	
/*	 always@(*)
	 begin
	 if(valid ==1)
		begin
				buffer_input=input_pixel	;			
		end
		else buffer_input=0;
	end	
	*/
		
	 
	 always @(posedge CLK)
	 begin 

			if(Valid==1)	
				begin
					buffer[0]<= input_pixel;
						for(j=0;j<144;j=j+1)
							begin
								buffer[j+1]<=buffer[j];				
							end
								data_out<=buffer[144];
								
				end
		
		end
			
			
			
	 
	 //end  


endmodule
