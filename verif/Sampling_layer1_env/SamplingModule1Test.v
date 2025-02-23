`timescale 1ns / 1ps
//legacy code to test DUT 
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:07:25 07/23/2018
// Design Name:   SamplingModule1
// Module Name:   C:/Users/LocalUser/Google Drive/ITU/Summer '18/Final Year Project/Work Files/conv2d/SamplingModule1Test.v
// Project Name:  conv2d
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SamplingModule1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////
module SamplingModule1Test;

	// Inputs
	reg Clock;
	reg [15:0] Input_Pixel;
	reg Input_Valid;
	reg Input_Finish;
	reg Input_Reset;

	// Outputs
	wire [15:0] Output_Pixel;
	wire Output_Valid;
	wire Output_Finish;
	wire [15:0] Watch;
	reg [31:0] i;

	//File Write Integer:
	integer Image_Output;
	integer i=1;
	//File Read Register:
	reg [15:0] Input_Pixels [0:575];
	
	// Instantiate the Unit Under Test (UUT)
	SamplingModule1 uut (
		.Clock(Clock), 
		.Input_Pixel(Input_Pixel), 
		.Input_Valid(Input_Valid), 
		.Input_Finish(Input_Finish), 
		.Input_Reset(Input_Reset), 
		.Output_Pixel(Output_Pixel), 
		.Output_Valid(Output_Valid), 
		.Output_Finish(Output_Finish),
		.Watch(Watch)
	);

	initial begin
		// Initialize Inputs
		i=0;
		Clock = 0;
		Input_Pixel = 0;
		Input_Valid = 0;
		Input_Finish = 0;
		Input_Reset = 0;
		$readmemh("1s_input.hex",Input_Pixels);
		Image_Output = $fopen("Image_Output_1.hex","w");
		
		#100;
		
		// Add stimulus here
		Input_Valid = 1;
		for (i=0;i<576;i=i+1)
		begin
			Input_Pixel = Input_Pixels[i];
			Input_Pixel =i;
			i=i+1;
			#20;
		end
		//Input_Valid = 0;
		/*
		for (i=0;i<10;i=i+1)
		begin
			//ab samajh aayi ke error kyun aa reha tha iterative testing me? wo is liye ke is loop ke under me data
			//bhej reha tha or pehle 50 se 59 tk bhejne ki waja se galt result aata tha, or us ki waja ye thi ke me
			//iteration dekh reha tha or wo input me jaate hi nahi they Input_Valid LOW honay ki waja se. Ab dekho
			//result theek aaa rehhe  hain kyunki ooper wala loop jahan khatam ho reha hai, nechey wala wahin
			//se shuru ho reha hai - per ye sirf ITERATION ke liye hai. Asal testing Asim ke data pe honi chahiye!
			#20;
		end
		Input_Valid = 1;
		for (i=49;i<1000;i=i+1)
		begin
			Input_Pixel = i;
			#20;
		end
		Input_Finish = 1;
		Input_Valid = 0;
		*/



	end
      
	always @ (posedge Clock)
	begin
		if(Output_Valid == 1)
		begin
			$fwrite(Image_Output,"%h\n",Output_Pixel);
		end
	end


	always
	begin
		#10 Clock=~Clock;
	end
      initial
			#97000 $finish;
endmodule

