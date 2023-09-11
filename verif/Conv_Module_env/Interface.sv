`ifndef ACC_IF_SV
`define ACC_IF_SV

// Define the interface acc_if with input bit h_clk
interface acc_if(input bit h_clk);

   // Define signal widths
   wire [16-1:0] input_port;
   wire [31:0] bias;
   wire valid;
   wire reset;
   wire [32-1:0] output_port;
   wire finish;
   wire invalid;

   // Driver Clocking block - Outputs and inputs are inverted with respect to DUT 
   clocking driver_cb @(posedge h_clk);
      output  input_port, bias, valid, reset;
      input  output_port, finish, invalid;
   endclocking: driver_cb

   // Monitor Clocking block - For sampling by monitor components
   clocking monitor_cb @(posedge h_clk);
      input  input_port, bias, reset, output_port, finish, invalid, valid;
   endclocking: monitor_cb

   // Define modports for monitor and driver
   modport monitor(clocking monitor_cb);
   modport driver(clocking driver_cb);

endinterface: acc_if

`endif
