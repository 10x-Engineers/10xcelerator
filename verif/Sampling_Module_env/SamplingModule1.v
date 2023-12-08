`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:57:56 03/25/2018 
// Design Name: 
// Module Name:    SamplingModule1 
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
module SamplingModule1(
	input Clock,
	input [15:0] Input_Pixel,
	input Input_Valid,
	input Input_Finish,
	input Input_Reset,
	output reg [15:0] Output_Pixel,
	output reg Output_Valid,
	output reg Output_Finish,
	output reg [15:0] Watch
	);
	//module registers
	reg [15:0] Input_Buffer [575:0];
	reg [15:0] Latch_Buffer [575:0];
	reg [09:0] Input_Counter;
	reg [07:0] Output_Counter;
	reg Flag_Input_Buffer_Filled;
	reg Flag_Output_Available;
	//loop's variable
	integer i;
	
	initial begin
	//output registers
		Output_Valid <= 'b0;
		Output_Finish <='b0;
		Output_Pixel <= 'b0;
	//internal flags
		Flag_Output_Available <= 'b0;
		Flag_Input_Buffer_Filled <= 'b0;
	//internel registers
		for (i=0;i<576;i=i+1)
		begin
			Input_Buffer[i] <= 'b0;
		end
		for (i=0;i<576;i=i+1)
		begin
			Latch_Buffer[i] <= 'b0;
		end
		Watch <= 0;
		Input_Counter <= 'b0;
		Output_Counter <= 'b0;
	end
	
	always @ (*)
	begin
		Watch <= Output_Counter;
	end
	
	//Rear Part of Module - Input
	always @ (posedge Clock)
	begin
		if (Input_Valid == 1 && Input_Reset == 0/* && Output_Finish == 0*/)
		begin
	
//previous code 
	// if (Input_Counter == 575)
	// 		begin
	// 			Flag_Input_Buffer_Filled <= 'b1;
	// 			/*
	// 			for (i=0;i<576;i=i+1)
	// 			begin
	// 				Latch_Buffer[i] <= Input_Buffer[i];
	// 			end
	// 			*/
	// 		end
	// 		else if (Input_Counter < 575)
	// 		begin
	// 			Input_Buffer[Input_Counter] <= Input_Pixel;
	// 			Input_Counter <= Input_Counter + 1;
	// 		end

//** new code 
			 if (Input_Counter <  576)
			begin
				Input_Buffer[Input_Counter] <= Input_Pixel;
				Input_Counter <= Input_Counter + 1;
				if(Input_Counter == 575)
				begin 
                  Flag_Input_Buffer_Filled <= 'b1;
				end 
			end
		end

//***
		if (Input_Reset == 1)
		begin
		//output registers
			Output_Valid <= 'b0;
			Output_Finish <='b0;
			Output_Pixel <= 'b0;
		//internal flags
			Flag_Output_Available <= 'b0;
			Flag_Input_Buffer_Filled <= 'b0;
		//internel registers
			for (i=0;i<576;i=i+1)
			begin
				Input_Buffer[i] <= 'b0;
			end
			for (i=0;i<576;i=i+1)
			begin
				Latch_Buffer[i] <= 'b0;
			end
			Watch <= 0;
			Input_Counter <= 'b0;
			Output_Counter <= 'b0;
		end
		
		if (Flag_Input_Buffer_Filled)
		begin
			for (i=0;i<576;i=i+1)
			begin
				Latch_Buffer[i] <= Input_Buffer[i];
			end
			Flag_Input_Buffer_Filled <= 0;
			Flag_Output_Available <= 1;
		end
		
		if (Flag_Output_Available)
		begin
			Output_Valid <= 1'b1;
			if (Output_Counter == 144)
			begin
				Flag_Output_Available <= 'b0;
				Output_Counter <= 'd0;
				Output_Valid <= 'b0;
				if (Output_Counter == 144)
				begin
					Output_Finish <= 'd1;
				end
			end
			else if (Output_Counter < 144)
			begin
				Output_Counter <= Output_Counter + 1;
			end
			case(Output_Counter)
				//line# 1
				'd000: Output_Pixel <= (Latch_Buffer[00] + Latch_Buffer[01] + Latch_Buffer[24] + Latch_Buffer[25]) /4;
				'd001: Output_Pixel <= (Latch_Buffer[02] + Latch_Buffer[03] + Latch_Buffer[26] + Latch_Buffer[27]) /4;
				'd002: Output_Pixel <= (Latch_Buffer[04] + Latch_Buffer[05] + Latch_Buffer[28] + Latch_Buffer[29]) /4;
				'd003: Output_Pixel <= (Latch_Buffer[06] + Latch_Buffer[07] + Latch_Buffer[30] + Latch_Buffer[31]) /4;
				'd004: Output_Pixel <= (Latch_Buffer[08] + Latch_Buffer[09] + Latch_Buffer[32] + Latch_Buffer[33]) /4;
				'd005: Output_Pixel <= (Latch_Buffer[10] + Latch_Buffer[11] + Latch_Buffer[34] + Latch_Buffer[35]) /4;
				'd006: Output_Pixel <= (Latch_Buffer[12] + Latch_Buffer[13] + Latch_Buffer[36] + Latch_Buffer[37]) /4;
				'd007: Output_Pixel <= (Latch_Buffer[14] + Latch_Buffer[15] + Latch_Buffer[38] + Latch_Buffer[39]) /4;
				'd008: Output_Pixel <= (Latch_Buffer[16] + Latch_Buffer[17] + Latch_Buffer[40] + Latch_Buffer[41]) /4;
				'd009: Output_Pixel <= (Latch_Buffer[18] + Latch_Buffer[19] + Latch_Buffer[42] + Latch_Buffer[43]) /4;
				'd010: Output_Pixel <= (Latch_Buffer[20] + Latch_Buffer[21] + Latch_Buffer[44] + Latch_Buffer[45]) /4;
				'd011: Output_Pixel <= (Latch_Buffer[22] + Latch_Buffer[23] + Latch_Buffer[46] + Latch_Buffer[47]) /4;
				//line# 2
				'd012: Output_Pixel <= (Latch_Buffer[48] + Latch_Buffer[49] + Latch_Buffer[72] + Latch_Buffer[73]) /4;
				'd013: Output_Pixel <= (Latch_Buffer[50] + Latch_Buffer[51] + Latch_Buffer[74] + Latch_Buffer[75]) /4;
				'd014: Output_Pixel <= (Latch_Buffer[52] + Latch_Buffer[53] + Latch_Buffer[76] + Latch_Buffer[77]) /4;
				'd015: Output_Pixel <= (Latch_Buffer[54] + Latch_Buffer[55] + Latch_Buffer[78] + Latch_Buffer[79]) /4;
				'd016: Output_Pixel <= (Latch_Buffer[56] + Latch_Buffer[57] + Latch_Buffer[80] + Latch_Buffer[81]) /4;
				'd017: Output_Pixel <= (Latch_Buffer[58] + Latch_Buffer[59] + Latch_Buffer[82] + Latch_Buffer[83]) /4;
				'd018: Output_Pixel <= (Latch_Buffer[60] + Latch_Buffer[61] + Latch_Buffer[84] + Latch_Buffer[85]) /4;
				'd019: Output_Pixel <= (Latch_Buffer[62] + Latch_Buffer[63] + Latch_Buffer[86] + Latch_Buffer[87]) /4;
				'd020: Output_Pixel <= (Latch_Buffer[64] + Latch_Buffer[65] + Latch_Buffer[88] + Latch_Buffer[89]) /4;
				'd021: Output_Pixel <= (Latch_Buffer[66] + Latch_Buffer[67] + Latch_Buffer[90] + Latch_Buffer[91]) /4;
				'd022: Output_Pixel <= (Latch_Buffer[68] + Latch_Buffer[69] + Latch_Buffer[92] + Latch_Buffer[93]) /4;
				'd023: Output_Pixel <= (Latch_Buffer[70] + Latch_Buffer[71] + Latch_Buffer[94] + Latch_Buffer[95]) /4;
				//line# 3
				'd024: Output_Pixel <= (Latch_Buffer[96] + Latch_Buffer[97] + Latch_Buffer[120] + Latch_Buffer[121]) /4;
				'd025: Output_Pixel <= (Latch_Buffer[98] + Latch_Buffer[99] + Latch_Buffer[122] + Latch_Buffer[123]) /4;
				'd026: Output_Pixel <= (Latch_Buffer[100] + Latch_Buffer[101] + Latch_Buffer[124] + Latch_Buffer[125]) /4;
				'd027: Output_Pixel <= (Latch_Buffer[102] + Latch_Buffer[103] + Latch_Buffer[126] + Latch_Buffer[127]) /4;
				'd028: Output_Pixel <= (Latch_Buffer[104] + Latch_Buffer[105] + Latch_Buffer[128] + Latch_Buffer[129]) /4;
				'd029: Output_Pixel <= (Latch_Buffer[106] + Latch_Buffer[107] + Latch_Buffer[130] + Latch_Buffer[131]) /4;
				'd030: Output_Pixel <= (Latch_Buffer[108] + Latch_Buffer[109] + Latch_Buffer[132] + Latch_Buffer[133]) /4;
				'd031: Output_Pixel <= (Latch_Buffer[110] + Latch_Buffer[111] + Latch_Buffer[134] + Latch_Buffer[135]) /4;
				'd032: Output_Pixel <= (Latch_Buffer[112] + Latch_Buffer[113] + Latch_Buffer[136] + Latch_Buffer[137]) /4;
				'd033: Output_Pixel <= (Latch_Buffer[114] + Latch_Buffer[115] + Latch_Buffer[138] + Latch_Buffer[139]) /4;
				'd034: Output_Pixel <= (Latch_Buffer[116] + Latch_Buffer[117] + Latch_Buffer[140] + Latch_Buffer[141]) /4;
				'd035: Output_Pixel <= (Latch_Buffer[118] + Latch_Buffer[119] + Latch_Buffer[142] + Latch_Buffer[143]) /4;
				//line# 4
				'd036: Output_Pixel <= (Latch_Buffer[144] + Latch_Buffer[145] + Latch_Buffer[168] + Latch_Buffer[169]) /4;
				'd037: Output_Pixel <= (Latch_Buffer[146] + Latch_Buffer[147] + Latch_Buffer[170] + Latch_Buffer[171]) /4;
				'd038: Output_Pixel <= (Latch_Buffer[148] + Latch_Buffer[149] + Latch_Buffer[172] + Latch_Buffer[173]) /4;
				'd039: Output_Pixel <= (Latch_Buffer[150] + Latch_Buffer[151] + Latch_Buffer[174] + Latch_Buffer[175]) /4;
				'd040: Output_Pixel <= (Latch_Buffer[152] + Latch_Buffer[153] + Latch_Buffer[176] + Latch_Buffer[177]) /4;
				'd041: Output_Pixel <= (Latch_Buffer[154] + Latch_Buffer[155] + Latch_Buffer[178] + Latch_Buffer[179]) /4;
				'd042: Output_Pixel <= (Latch_Buffer[156] + Latch_Buffer[157] + Latch_Buffer[180] + Latch_Buffer[181]) /4;
				'd043: Output_Pixel <= (Latch_Buffer[158] + Latch_Buffer[159] + Latch_Buffer[182] + Latch_Buffer[183]) /4;
				'd044: Output_Pixel <= (Latch_Buffer[160] + Latch_Buffer[161] + Latch_Buffer[184] + Latch_Buffer[185]) /4;
				'd045: Output_Pixel <= (Latch_Buffer[162] + Latch_Buffer[163] + Latch_Buffer[186] + Latch_Buffer[187]) /4;
				'd046: Output_Pixel <= (Latch_Buffer[164] + Latch_Buffer[165] + Latch_Buffer[188] + Latch_Buffer[189]) /4;
				'd047: Output_Pixel <= (Latch_Buffer[166] + Latch_Buffer[167] + Latch_Buffer[190] + Latch_Buffer[191]) /4;
				//line# 5
				'd048: Output_Pixel <= (Latch_Buffer[192] + Latch_Buffer[193] + Latch_Buffer[216] + Latch_Buffer[217]) /4;
				'd049: Output_Pixel <= (Latch_Buffer[194] + Latch_Buffer[195] + Latch_Buffer[218] + Latch_Buffer[219]) /4;
				'd050: Output_Pixel <= (Latch_Buffer[196] + Latch_Buffer[197] + Latch_Buffer[220] + Latch_Buffer[221]) /4;
				'd051: Output_Pixel <= (Latch_Buffer[198] + Latch_Buffer[199] + Latch_Buffer[222] + Latch_Buffer[223]) /4;
				'd052: Output_Pixel <= (Latch_Buffer[200] + Latch_Buffer[201] + Latch_Buffer[224] + Latch_Buffer[225]) /4;
				'd053: Output_Pixel <= (Latch_Buffer[202] + Latch_Buffer[203] + Latch_Buffer[226] + Latch_Buffer[227]) /4;
				'd054: Output_Pixel <= (Latch_Buffer[204] + Latch_Buffer[205] + Latch_Buffer[228] + Latch_Buffer[229]) /4;
				'd055: Output_Pixel <= (Latch_Buffer[206] + Latch_Buffer[207] + Latch_Buffer[230] + Latch_Buffer[231]) /4;
				'd056: Output_Pixel <= (Latch_Buffer[208] + Latch_Buffer[209] + Latch_Buffer[232] + Latch_Buffer[233]) /4;
				'd057: Output_Pixel <= (Latch_Buffer[210] + Latch_Buffer[211] + Latch_Buffer[234] + Latch_Buffer[235]) /4;
				'd058: Output_Pixel <= (Latch_Buffer[212] + Latch_Buffer[213] + Latch_Buffer[236] + Latch_Buffer[237]) /4;
				'd059: Output_Pixel <= (Latch_Buffer[214] + Latch_Buffer[215] + Latch_Buffer[238] + Latch_Buffer[239]) /4;
				//line# 6
				'd060: Output_Pixel <= (Latch_Buffer[240] + Latch_Buffer[241] + Latch_Buffer[264] + Latch_Buffer[265]) /4;
				'd061: Output_Pixel <= (Latch_Buffer[242] + Latch_Buffer[243] + Latch_Buffer[266] + Latch_Buffer[267]) /4;
				'd062: Output_Pixel <= (Latch_Buffer[244] + Latch_Buffer[245] + Latch_Buffer[268] + Latch_Buffer[269]) /4;
				'd063: Output_Pixel <= (Latch_Buffer[246] + Latch_Buffer[247] + Latch_Buffer[270] + Latch_Buffer[271]) /4;
				'd064: Output_Pixel <= (Latch_Buffer[248] + Latch_Buffer[249] + Latch_Buffer[272] + Latch_Buffer[273]) /4;
				'd065: Output_Pixel <= (Latch_Buffer[250] + Latch_Buffer[251] + Latch_Buffer[274] + Latch_Buffer[275]) /4;
				'd066: Output_Pixel <= (Latch_Buffer[252] + Latch_Buffer[253] + Latch_Buffer[276] + Latch_Buffer[277]) /4;
				'd067: Output_Pixel <= (Latch_Buffer[254] + Latch_Buffer[255] + Latch_Buffer[278] + Latch_Buffer[279]) /4;
				'd068: Output_Pixel <= (Latch_Buffer[256] + Latch_Buffer[257] + Latch_Buffer[280] + Latch_Buffer[281]) /4;
				'd069: Output_Pixel <= (Latch_Buffer[258] + Latch_Buffer[259] + Latch_Buffer[282] + Latch_Buffer[283]) /4;
				'd070: Output_Pixel <= (Latch_Buffer[260] + Latch_Buffer[261] + Latch_Buffer[284] + Latch_Buffer[285]) /4;
				'd071: Output_Pixel <= (Latch_Buffer[262] + Latch_Buffer[263] + Latch_Buffer[286] + Latch_Buffer[287]) /4;
				//line# 7
				'd072: Output_Pixel <= (Latch_Buffer[288+00] + Latch_Buffer[288+01] + Latch_Buffer[288+24] + Latch_Buffer[288+25]) /4;
				'd073: Output_Pixel <= (Latch_Buffer[288+02] + Latch_Buffer[288+03] + Latch_Buffer[288+26] + Latch_Buffer[288+27]) /4;
				//previous code 'd004: Output_Pixel <= (Latch_Buffer[288+04] + Latch_Buffer[288+05] + Latch_Buffer[288+28] + Latch_Buffer[288+29]) /4;
				'd074: Output_Pixel <= (Latch_Buffer[288+04] + Latch_Buffer[288+05] + Latch_Buffer[288+28] + Latch_Buffer[288+29]) /4;
				'd075: Output_Pixel <= (Latch_Buffer[288+06] + Latch_Buffer[288+07] + Latch_Buffer[288+30] + Latch_Buffer[288+31]) /4;
				'd076: Output_Pixel <= (Latch_Buffer[288+08] + Latch_Buffer[288+09] + Latch_Buffer[288+32] + Latch_Buffer[288+33]) /4;
				'd077: Output_Pixel <= (Latch_Buffer[288+10] + Latch_Buffer[288+11] + Latch_Buffer[288+34] + Latch_Buffer[288+35]) /4;
				'd078: Output_Pixel <= (Latch_Buffer[288+12] + Latch_Buffer[288+13] + Latch_Buffer[288+36] + Latch_Buffer[288+37]) /4;
				'd079: Output_Pixel <= (Latch_Buffer[288+14] + Latch_Buffer[288+15] + Latch_Buffer[288+38] + Latch_Buffer[288+39]) /4;
				'd080: Output_Pixel <= (Latch_Buffer[288+16] + Latch_Buffer[288+17] + Latch_Buffer[288+40] + Latch_Buffer[288+41]) /4;
				'd081: Output_Pixel <= (Latch_Buffer[288+18] + Latch_Buffer[288+19] + Latch_Buffer[288+42] + Latch_Buffer[288+43]) /4;
				'd082: Output_Pixel <= (Latch_Buffer[288+20] + Latch_Buffer[288+21] + Latch_Buffer[288+44] + Latch_Buffer[288+45]) /4;
				'd083: Output_Pixel <= (Latch_Buffer[288+22] + Latch_Buffer[288+23] + Latch_Buffer[288+46] + Latch_Buffer[288+47]) /4;
				//line# 8
				'd084: Output_Pixel <= (Latch_Buffer[288+48] + Latch_Buffer[288+49] + Latch_Buffer[288+72] + Latch_Buffer[288+73]) /4;
				'd085: Output_Pixel <= (Latch_Buffer[288+50] + Latch_Buffer[288+51] + Latch_Buffer[288+74] + Latch_Buffer[288+75]) /4;
				'd086: Output_Pixel <= (Latch_Buffer[288+52] + Latch_Buffer[288+53] + Latch_Buffer[288+76] + Latch_Buffer[288+77]) /4;
				'd087: Output_Pixel <= (Latch_Buffer[288+54] + Latch_Buffer[288+55] + Latch_Buffer[288+78] + Latch_Buffer[288+79]) /4;
				'd088: Output_Pixel <= (Latch_Buffer[288+56] + Latch_Buffer[288+57] + Latch_Buffer[288+80] + Latch_Buffer[288+81]) /4;
				'd089: Output_Pixel <= (Latch_Buffer[288+58] + Latch_Buffer[288+59] + Latch_Buffer[288+82] + Latch_Buffer[288+83]) /4;
				'd090: Output_Pixel <= (Latch_Buffer[288+60] + Latch_Buffer[288+61] + Latch_Buffer[288+84] + Latch_Buffer[288+85]) /4;
				'd091: Output_Pixel <= (Latch_Buffer[288+62] + Latch_Buffer[288+63] + Latch_Buffer[288+86] + Latch_Buffer[288+87]) /4;
				'd092: Output_Pixel <= (Latch_Buffer[288+64] + Latch_Buffer[288+65] + Latch_Buffer[288+88] + Latch_Buffer[288+89]) /4;
				'd093: Output_Pixel <= (Latch_Buffer[288+66] + Latch_Buffer[288+67] + Latch_Buffer[288+90] + Latch_Buffer[288+91]) /4;
				'd094: Output_Pixel <= (Latch_Buffer[288+68] + Latch_Buffer[288+69] + Latch_Buffer[288+92] + Latch_Buffer[288+93]) /4;
				'd095: Output_Pixel <= (Latch_Buffer[288+70] + Latch_Buffer[288+71] + Latch_Buffer[288+94] + Latch_Buffer[288+95]) /4;
				//line# 9
				'd096: Output_Pixel <= (Latch_Buffer[288+96] + Latch_Buffer[288+97] + Latch_Buffer[288+120] + Latch_Buffer[288+121]) /4;
				'd097: Output_Pixel <= (Latch_Buffer[288+98] + Latch_Buffer[288+99] + Latch_Buffer[288+122] + Latch_Buffer[288+123]) /4;
				'd098: Output_Pixel <= (Latch_Buffer[288+100] + Latch_Buffer[288+101] + Latch_Buffer[288+124] + Latch_Buffer[288+125]) /4;
				'd099: Output_Pixel <= (Latch_Buffer[288+102] + Latch_Buffer[288+103] + Latch_Buffer[288+126] + Latch_Buffer[288+127]) /4;
				'd100: Output_Pixel <= (Latch_Buffer[288+104] + Latch_Buffer[288+105] + Latch_Buffer[288+128] + Latch_Buffer[288+129]) /4;
				'd101: Output_Pixel <= (Latch_Buffer[288+106] + Latch_Buffer[288+107] + Latch_Buffer[288+130] + Latch_Buffer[288+131]) /4;
				'd102: Output_Pixel <= (Latch_Buffer[288+108] + Latch_Buffer[288+109] + Latch_Buffer[288+132] + Latch_Buffer[288+133]) /4;
				'd103: Output_Pixel <= (Latch_Buffer[288+110] + Latch_Buffer[288+111] + Latch_Buffer[288+134] + Latch_Buffer[288+135]) /4;
				'd104: Output_Pixel <= (Latch_Buffer[288+112] + Latch_Buffer[288+113] + Latch_Buffer[288+136] + Latch_Buffer[288+137]) /4;
				'd105: Output_Pixel <= (Latch_Buffer[288+114] + Latch_Buffer[288+115] + Latch_Buffer[288+138] + Latch_Buffer[288+139]) /4;
				'd106: Output_Pixel <= (Latch_Buffer[288+116] + Latch_Buffer[288+117] + Latch_Buffer[288+140] + Latch_Buffer[288+141]) /4;
				'd107: Output_Pixel <= (Latch_Buffer[288+118] + Latch_Buffer[288+119] + Latch_Buffer[288+142] + Latch_Buffer[288+143]) /4;
				//line# 10
				'd108: Output_Pixel <= (Latch_Buffer[288+144] + Latch_Buffer[288+145] + Latch_Buffer[288+168] + Latch_Buffer[288+169]) /4;
				'd109: Output_Pixel <= (Latch_Buffer[288+146] + Latch_Buffer[288+147] + Latch_Buffer[288+170] + Latch_Buffer[288+171]) /4;
				'd110: Output_Pixel <= (Latch_Buffer[288+148] + Latch_Buffer[288+149] + Latch_Buffer[288+172] + Latch_Buffer[288+173]) /4;
				'd111: Output_Pixel <= (Latch_Buffer[288+150] + Latch_Buffer[288+151] + Latch_Buffer[288+174] + Latch_Buffer[288+175]) /4;
				'd112: Output_Pixel <= (Latch_Buffer[288+152] + Latch_Buffer[288+153] + Latch_Buffer[288+176] + Latch_Buffer[288+177]) /4;
				'd113: Output_Pixel <= (Latch_Buffer[288+154] + Latch_Buffer[288+155] + Latch_Buffer[288+178] + Latch_Buffer[288+179]) /4;
				'd114: Output_Pixel <= (Latch_Buffer[288+156] + Latch_Buffer[288+157] + Latch_Buffer[288+180] + Latch_Buffer[288+181]) /4;
				'd115: Output_Pixel <= (Latch_Buffer[288+158] + Latch_Buffer[288+159] + Latch_Buffer[288+182] + Latch_Buffer[288+183]) /4;
				'd116: Output_Pixel <= (Latch_Buffer[288+160] + Latch_Buffer[288+161] + Latch_Buffer[288+184] + Latch_Buffer[288+185]) /4;
				'd117: Output_Pixel <= (Latch_Buffer[288+162] + Latch_Buffer[288+163] + Latch_Buffer[288+186] + Latch_Buffer[288+187]) /4;
				'd118: Output_Pixel <= (Latch_Buffer[288+164] + Latch_Buffer[288+165] + Latch_Buffer[288+188] + Latch_Buffer[288+189]) /4;
				'd119: Output_Pixel <= (Latch_Buffer[288+166] + Latch_Buffer[288+167] + Latch_Buffer[288+190] + Latch_Buffer[288+191]) /4;
				//line# 11
				'd120: Output_Pixel <= (Latch_Buffer[288+192] + Latch_Buffer[288+193] + Latch_Buffer[288+216] + Latch_Buffer[288+217]) /4;
				'd121: Output_Pixel <= (Latch_Buffer[288+194] + Latch_Buffer[288+195] + Latch_Buffer[288+218] + Latch_Buffer[288+219]) /4;
				'd122: Output_Pixel <= (Latch_Buffer[288+196] + Latch_Buffer[288+197] + Latch_Buffer[288+220] + Latch_Buffer[288+221]) /4;
				'd123: Output_Pixel <= (Latch_Buffer[288+198] + Latch_Buffer[288+199] + Latch_Buffer[288+222] + Latch_Buffer[288+223]) /4;
				'd124: Output_Pixel <= (Latch_Buffer[288+200] + Latch_Buffer[288+201] + Latch_Buffer[288+224] + Latch_Buffer[288+225]) /4;
				'd125: Output_Pixel <= (Latch_Buffer[288+202] + Latch_Buffer[288+203] + Latch_Buffer[288+226] + Latch_Buffer[288+227]) /4;
				'd126: Output_Pixel <= (Latch_Buffer[288+204] + Latch_Buffer[288+205] + Latch_Buffer[288+228] + Latch_Buffer[288+229]) /4;
				'd127: Output_Pixel <= (Latch_Buffer[288+206] + Latch_Buffer[288+207] + Latch_Buffer[288+230] + Latch_Buffer[288+231]) /4;
				'd128: Output_Pixel <= (Latch_Buffer[288+208] + Latch_Buffer[288+209] + Latch_Buffer[288+232] + Latch_Buffer[288+233]) /4;
				'd129: Output_Pixel <= (Latch_Buffer[288+210] + Latch_Buffer[288+211] + Latch_Buffer[288+234] + Latch_Buffer[288+235]) /4;
				'd130: Output_Pixel <= (Latch_Buffer[288+212] + Latch_Buffer[288+213] + Latch_Buffer[288+236] + Latch_Buffer[288+237]) /4;
				'd131: Output_Pixel <= (Latch_Buffer[288+214] + Latch_Buffer[288+215] + Latch_Buffer[288+238] + Latch_Buffer[288+239]) /4;
				//line# 12
				'd132: Output_Pixel <= (Latch_Buffer[288+240] + Latch_Buffer[288+241] + Latch_Buffer[288+264] + Latch_Buffer[288+265]) /4;
				'd133: Output_Pixel <= (Latch_Buffer[288+242] + Latch_Buffer[288+243] + Latch_Buffer[288+266] + Latch_Buffer[288+267]) /4;
				'd134: Output_Pixel <= (Latch_Buffer[288+244] + Latch_Buffer[288+245] + Latch_Buffer[288+268] + Latch_Buffer[288+269]) /4;
				'd135: Output_Pixel <= (Latch_Buffer[288+246] + Latch_Buffer[288+247] + Latch_Buffer[288+270] + Latch_Buffer[288+271]) /4;
				'd136: Output_Pixel <= (Latch_Buffer[288+248] + Latch_Buffer[288+249] + Latch_Buffer[288+272] + Latch_Buffer[288+273]) /4;
				'd137: Output_Pixel <= (Latch_Buffer[288+250] + Latch_Buffer[288+251] + Latch_Buffer[288+274] + Latch_Buffer[288+275]) /4;
				'd138: Output_Pixel <= (Latch_Buffer[288+252] + Latch_Buffer[288+253] + Latch_Buffer[288+276] + Latch_Buffer[288+277]) /4;
				'd139: Output_Pixel <= (Latch_Buffer[288+254] + Latch_Buffer[288+255] + Latch_Buffer[288+278] + Latch_Buffer[288+279]) /4;
				'd140: Output_Pixel <= (Latch_Buffer[288+256] + Latch_Buffer[288+257] + Latch_Buffer[288+280] + Latch_Buffer[288+281]) /4;
				'd141: Output_Pixel <= (Latch_Buffer[288+258] + Latch_Buffer[288+259] + Latch_Buffer[288+282] + Latch_Buffer[288+283]) /4;
				'd142: Output_Pixel <= (Latch_Buffer[288+260] + Latch_Buffer[288+261] + Latch_Buffer[288+284] + Latch_Buffer[288+285]) /4;
				'd143: Output_Pixel <= (Latch_Buffer[288+262] + Latch_Buffer[288+263] + Latch_Buffer[288+286] + Latch_Buffer[288+287]) /4;
				default: Output_Pixel <= 'b11111111111111111111111111111111111111;
			endcase
		end//IF-FLAG_INPUT_AVAILABLE-ENDs
	end//ClockENDs
	
	
	//Front Part of Module - Output
	
		
endmodule

