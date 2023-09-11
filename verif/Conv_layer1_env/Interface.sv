
`ifndef ACC_IF_SV
`define ACC_IF_SV

interface acc_if(input bit h_clk);


//int output_bits= 32; // fr time being hardcoding values 
//int input_bits =16;

    wire [16-1:0] input_port;
	 wire [31:0] bias;
	 wire valid;
	 wire reset;
	 
    wire [32-1:0] output_port;
    wire finish;
    wire invalid;



	  //Driver Clocking block outputs adn inputs are inverted with respect to DUT 
   clocking driver_cb @(posedge h_clk);
      output  input_port, bias,valid,reset;
      input   output_port,finish,invalid;
   endclocking: driver_cb

   //Monitor Clocking block - For sampling by monitor components
   clocking monitor_cb @(posedge h_clk);
      input  input_port, bias,reset,output_port,finish,invalid ,valid;
   endclocking: monitor_cb


  modport monitor(clocking monitor_cb);
  modport driver(clocking driver_cb);

endinterface: acc_if

`endif
