
`ifndef ACC_IF_SV
`define ACC_IF_SV

interface samp_if(input bit h_clk);

    wire [16-1:0] Input_Pixel;
    wire  Input_Valid;
    wire  Input_Finish;
    wire  Input_Reset;
    wire [16-1:0] Output_Pixel;
    wire Output_Finish;
    wire Output_Valid;
    
	  //Driver Clocking block outputs adn inputs are inverted with respect to DUT 
      clocking driver_cb @(posedge h_clk);
      output #2 Input_Pixel, Input_Valid,Input_Finish,Input_Reset;
      input  #1 Output_Pixel,Output_Finish,Output_Valid;
   endclocking: driver_cb

   //Monitor Clocking block - For sampling by monitor components
   clocking monitor_cb @(posedge h_clk);
      input #1  Input_Pixel, Input_Valid,Input_Finish,Input_Reset,Output_Pixel,Output_Finish,Output_Valid;
   endclocking: monitor_cb


  modport monitor(clocking monitor_cb);
  modport driver(clocking driver_cb);

endinterface: samp_if

`endif
