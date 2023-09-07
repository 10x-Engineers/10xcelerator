
 //Include all files
  import uvm_pkg::*;
`include "uvm_macros.svh"

`include "small_interface.sv"
`include "interface.sv"
`include "seq_item.sv"
`include "temp_seqitem.sv"
`include "seqr.sv"
`include "sequence.sv"

`include "driver.sv"
`include "monitor.sv"
`include "agent.sv"
`include "pass_mon.sv"
`include "passive_agt.sv"

`include "env.sv"
`include "main_sb.sv"
`include "Environment.sv"
`include "sb.sv"
`include "test.sv"

module testbench;
// Global siganl
   logic h_clk;
 

   initial begin
      h_clk=0;
   end
  
  initial begin
    $dumpfile("dump.vcd");
  $dumpvars;
  end

  

      //Generate a clock
   always begin
      #10 h_clk = ~h_clk;
   end
 
   //Instantiate a physical interface for APB interface


  acc_if  acc_if1(.h_clk(h_clk));
  acc_if  acc_if2(.h_clk(h_clk));
  acc_if  acc_if3(.h_clk(h_clk));
  acc_if  acc_if4(.h_clk(h_clk));
  acc_if  acc_if5(.h_clk(h_clk));
  acc_if  acc_if6(.h_clk(h_clk));

small_if sm_if(.h_clk(h_clk)); // for Relu Values 

conv_layer_1 uut (
		.input_image(acc_if1.input_port), 
		.valid_input(acc_if1.valid), 
		.clk_global(acc_if1.h_clk), 
		.reset_layer(acc_if1.reset), 
		.out1(sm_if.output_port1),
		.out2(sm_if.output_port2),
		.out3(sm_if.output_port3),
		.out4(sm_if.output_port4),
		.out5(sm_if.output_port5),
		.out6(sm_if.output_port6),
		.invalid(acc_if6.invalid),
		.finish(acc_if6.finish)
	);

    assign  acc_if1.output_port  = uut.conv_out1;
    assign  acc_if2.output_port = uut.conv_out2; 
    assign  acc_if3.output_port = uut.conv_out3; 
    assign  acc_if4.output_port = uut.conv_out4; 
    assign  acc_if5.output_port = uut.conv_out5; 
    assign  acc_if6.output_port = uut.conv_out6; 




  initial begin
    //Pass this physical interface to test top (which will further pass it down to env->agent->drv/sqr/mon
    uvm_config_db#(virtual acc_if)::set( null, "*", "vif1", acc_if1);
    uvm_config_db#(virtual acc_if)::set( null, "*", "vif2", acc_if2);
    uvm_config_db#(virtual acc_if)::set( null, "*", "vif3", acc_if3);
    uvm_config_db#(virtual acc_if)::set( null, "*", "vif4", acc_if4);
    uvm_config_db#(virtual acc_if)::set( null, "*", "vif5", acc_if5);
    uvm_config_db#(virtual acc_if)::set( null, "*", "vif6", acc_if6);
    uvm_config_db#(virtual small_if)::set( null, "*", "sm_if", sm_if);
    //Call the test - but passing run_test argument as test class name
    //Another option is to not pass any test argument and use +UVM_TEST on command line to sepecify which test to run
    run_test("acc_model_base_test");
    
    
  end
  
  
endmodule




