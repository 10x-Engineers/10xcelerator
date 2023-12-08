//This module will initiate the DUT and set that interface for other components 
 //Include all files


 `include "Interface.sv"
  import include_pkg::*;


`define DIF this.vif.driver.driver_cb
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

  acc_if acc_if(.h_clk(h_clk));
  


	conv_12x12 uut (
		.input_port(acc_if.input_port), 
		.valid(acc_if.valid), 
		.clk(acc_if.h_clk), 
		.reset(acc_if.reset), 
		.output_port(acc_if.output_port),
		.invalid(acc_if.invalid),
		.bias(acc_if.bias),
		.finish(acc_if.finish)	

	);




  initial begin
    //Pass this physical interface to test top (which will further pass it down to env->agent->drv/sqr/mon
    uvm_config_db#(virtual acc_if)::set( null, "*", "vif", acc_if);
    //Call the test - but passing run_test argument as test class name
    //Another option is to not pass any test argument and use +UVM_TEST on command line to sepecify which test to run
    run_test("acc_model_base_test");
    
    
  end
  
  
endmodule



