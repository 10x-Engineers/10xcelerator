// Include all files
`include "Interface.sv"
`include "Relu_Interface.sv"
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

   // Instantiate physical interfaces
   acc_if acc_if1(.h_clk(h_clk));
   acc_if acc_if2(.h_clk(h_clk));
   acc_if acc_if3(.h_clk(h_clk));
   acc_if acc_if4(.h_clk(h_clk));
   acc_if acc_if5(.h_clk(h_clk));
   acc_if acc_if6(.h_clk(h_clk));

   small_if sm_if1(.h_clk(h_clk)); // for Relu Values
   small_if sm_if2(.h_clk(h_clk)); // for Relu Values
   small_if sm_if3(.h_clk(h_clk)); // for Relu Values
   small_if sm_if4(.h_clk(h_clk)); // for Relu Values
   small_if sm_if5(.h_clk(h_clk)); // for Relu Values
   small_if sm_if6(.h_clk(h_clk)); // for Relu Values

   conv_layer_1 uut (
      .input_image(acc_if1.input_port),
      .valid_input(acc_if1.valid),
      .clk_global(acc_if1.h_clk),
      .reset_layer(acc_if1.reset),
      .out1(sm_if1.output_port),
      .out2(sm_if2.output_port),
      .out3(sm_if3.output_port),
      .out4(sm_if4.output_port),
      .out5(sm_if5.output_port),
      .out6(sm_if6.output_port),
      .invalid(acc_if6.invalid),
      .finish(acc_if6.finish)
   );

   assign acc_if1.output_port = uut.conv_out1;
   assign acc_if2.output_port = uut.conv_out2;
   assign acc_if3.output_port = uut.conv_out3;
   assign acc_if4.output_port = uut.conv_out4;
   assign acc_if5.output_port = uut.conv_out5;
   assign acc_if6.output_port = uut.conv_out6;

   initial begin
      // Pass these physical interfaces to the test top (which will further pass them down to env->agent->drv/sqr/mon)
      uvm_config_db#(virtual acc_if)::set(null, "*", "vif1", acc_if1);
      uvm_config_db#(virtual acc_if)::set(null, "*", "vif2", acc_if2);
      uvm_config_db#(virtual acc_if)::set(null, "*", "vif3", acc_if3);
      uvm_config_db#(virtual acc_if)::set(null, "*", "vif4", acc_if4);
      uvm_config_db#(virtual acc_if)::set(null, "*", "vif5", acc_if5);
      uvm_config_db#(virtual acc_if)::set(null, "*", "vif6", acc_if6);
      uvm_config_db#(virtual small_if)::set(null, "*", "sm_if1", sm_if1);
      uvm_config_db#(virtual small_if)::set(null, "*", "sm_if2", sm_if2);
      uvm_config_db#(virtual small_if)::set(null, "*", "sm_if3", sm_if3);
      uvm_config_db#(virtual small_if)::set(null, "*", "sm_if4", sm_if4);
      uvm_config_db#(virtual small_if)::set(null, "*", "sm_if5", sm_if5);
      uvm_config_db#(virtual small_if)::set(null, "*", "sm_if6", sm_if6);
      
      // Call the test - but passing run_test argument as the test class name
      // Another option is to not pass any test argument and use +UVM_TEST on the command line to specify which test to run
      run_test("acc_model_base_test");
   end

endmodule
