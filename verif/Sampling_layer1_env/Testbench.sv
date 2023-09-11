// Include all files
`include "Interface.sv"
import include_pkg::*;

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
  samp_if samp_if1(.h_clk(h_clk));
  samp_if samp_if2(.h_clk(h_clk));
  samp_if samp_if3(.h_clk(h_clk));
  samp_if samp_if4(.h_clk(h_clk));
  samp_if samp_if5(.h_clk(h_clk));
  samp_if samp_if6(.h_clk(h_clk));

  SamplingLayer1 uut(
    .Clock(h_clk),
    .Input_Valid(samp_if1.Input_Valid),
    .Input_Finish(samp_if1.Input_Finish),
    .Input_Reset(samp_if1.Input_Reset),
    .Input_Pixel_1(samp_if1.Input_Pixel),
    .Input_Pixel_2(samp_if2.Input_Pixel),
    .Input_Pixel_3(samp_if3.Input_Pixel),
    .Input_Pixel_4(samp_if4.Input_Pixel),
    .Input_Pixel_5(samp_if5.Input_Pixel),
    .Input_Pixel_6(samp_if6.Input_Pixel),
    .Output_Pixel_1(samp_if1.Output_Pixel),
    .Output_Pixel_2(samp_if2.Output_Pixel),
    .Output_Pixel_3(samp_if3.Output_Pixel),
    .Output_Pixel_4(samp_if4.Output_Pixel),
    .Output_Pixel_5(samp_if5.Output_Pixel),
    .Output_Pixel_6(samp_if6.Output_Pixel),
    .Output_Valid(samp_if6.Output_Valid),
    .Output_Finish(samp_if6.Output_Finish)
  );

  initial begin
    // Pass this physical interface to test top (which will further pass it down to env->agent->drv/sqr/mon)
    uvm_config_db#(virtual samp_if)::set(null, "*", "vif1", samp_if1);
    uvm_config_db#(virtual samp_if)::set(null, "*", "vif2", samp_if2);
    uvm_config_db#(virtual samp_if)::set(null, "*", "vif3", samp_if3);
    uvm_config_db#(virtual samp_if)::set(null, "*", "vif4", samp_if4);
    uvm_config_db#(virtual samp_if)::set(null, "*", "vif5", samp_if5);
    uvm_config_db#(virtual samp_if)::set(null, "*", "vif6", samp_if6);

    // Call the test - but passing run_test argument as the test class name
    // Another option is to not pass any test argument and use +UVM_TEST on the command line to specify which test to run
    run_test("samp_model_base_test");
  end
endmodule
