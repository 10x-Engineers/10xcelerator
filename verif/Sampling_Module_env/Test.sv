class samp_model_base_test extends uvm_test;
  `uvm_component_utils(samp_model_base_test)

  //---------------------------------------
  // env instance 
  //--------------------------------------- 
  samp_env env;
  
  virtual samp_if vif;
  
  //---------------------------------------
  // constructor
  //---------------------------------------
  function new(string name = "samp_model_base_test", uvm_component parent = null);
    super.new(name, parent);
  endfunction : new

  //---------------------------------------
  // build_phase
  //---------------------------------------
  function void build_phase(uvm_phase phase);
    env = samp_env::type_id::create("env", this);
    
    if (!uvm_config_db#(virtual samp_if)::get(this, "", "vif", vif)) begin
       `uvm_fatal("Samp/DRV/NOVIF", "No virtual interface specified for this test instance")
    end 
    
    uvm_config_db#(virtual samp_if)::set(this, "env", "vif", vif);
  endfunction
  
  //---------------------------------------
  // end_of_elaboration phase
  //---------------------------------------  
  virtual function void end_of_elaboration();
    // print's the topology
    print();
  endfunction
  
  task run_phase(uvm_phase phase);
    samp_seq samp_seq_obj;
    samp_seq_obj = samp_seq::type_id::create("samp_seq");
    phase.raise_objection(this, "Starting samp_base_seq in main phase");
    $display("%t Starting sequence samp_seq run_phase", $time);
    samp_seq_obj.start(env.agt.sqr);  

    forever begin 
        if (env.vif.Output_Finish == 1) begin 
           phase.drop_objection(this, "Finished samp_seq in main phase");
           @(env.vif.monitor_cb);
        end 
        else 
          @(env.vif.monitor_cb);
    end 
  endtask: run_phase

  //---------------------------------------
  // end_of_elaboration phase
  //---------------------------------------   
  function void report_phase(uvm_phase phase);
    uvm_report_server svr;
    super.report_phase(phase);
   
    svr = uvm_report_server::get_server();
    if (svr.get_severity_count(UVM_FATAL) + svr.get_severity_count(UVM_ERROR) > 0) begin
      `uvm_info(get_type_name(), "---------------------------------------", UVM_NONE)
      `uvm_info(get_type_name(), "----            TEST FAIL          ----", UVM_NONE)
      `uvm_info(get_type_name(), "---------------------------------------", UVM_NONE)
    end
    else begin
      `uvm_info(get_type_name(), "---------------------------------------", UVM_NONE)
      `uvm_info(get_type_name(), "----           TEST PASS           ----", UVM_NONE)
      `uvm_info(get_type_name(), "---------------------------------------", UVM_NONE)
    end
  endfunction 

endclass : samp_model_base_test