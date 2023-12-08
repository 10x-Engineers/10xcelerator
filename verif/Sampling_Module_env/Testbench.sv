// Include all files
`include "Interface.sv"
import include_pkg::*;

`define DIF this.vif.driver.driver_cb

module testbench;
  // Global signal
  logic h_clk;

  initial begin
    h_clk = 0;
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end

  // Generate a clock
  always begin
    #10 h_clk = ~h_clk;
  end

  // Instantiate a physical interface for APB interface
  samp_if samp_if(.h_clk(h_clk));

  // Instantiate your DUT (Design Under Test)
  SamplingModule1 uut (
    .Clock(h_clk),
    .Input_Valid(samp_if.Input_Valid),
    .Input_Finish(samp_if.Input_Finish),
    .Input_Reset(samp_if.Input_Reset),
    .Input_Pixel(samp_if.Input_Pixel),
    .Output_Pixel(samp_if.Output_Pixel),
    .Output_Valid(samp_if.Output_Valid),
    .Output_Finish(samp_if.Output_Finish)
  );

  initial begin
    // Pass this physical interface to the test top (which will further pass it down to env->agent->drv/sqr/mon)
    uvm_config_db#(virtual samp_if)::set(null, "*", "vif", samp_if);

    // Call the test - but passing run_test argument as the test class name
    // Another option is to not pass any test argument and use +UVM_TEST on the command line to specify which test to run
    run_test("samp_model_base_test");
  end
endmodule
