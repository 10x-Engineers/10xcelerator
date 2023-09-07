//


class acc_model_base_test extends uvm_test;

  `uvm_component_utils(acc_model_base_test)
  
  //---------------------------------------
  // env instance 
  //--------------------------------------- 
  acc_env env;
  
  virtual acc_if vif;
  //---------------------------------------
  // constructor
  //---------------------------------------
  function new(string name = "acc_model_base_test",uvm_component parent=null);
    super.new(name,parent);
  endfunction : new

  //---------------------------------------
  // build_phase
  //---------------------------------------
  function void build_phase(uvm_phase phase);
    //cfg = acc_config::type_id::create("cfg", this);
    env = acc_env::type_id::create("env", this);
    //
    if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif", vif)) begin
       `uvm_fatal("Acc/DRV/NOVIF", "No virtual interface specified for this test instance")
    end 
    uvm_config_db#(virtual acc_if)::set( this, "env", "vif", vif);
  endfunction
  
  //---------------------------------------
  // end_of_elobaration phase
  //---------------------------------------  
  virtual function void end_of_elaboration();
    //print's the topology
    print();
  endfunction
  
  task run_phase( uvm_phase phase );
    acc_seq acc_seq_obj;
    acc_seq_obj = acc_seq::type_id::create("acc_seq");
    phase.raise_objection( this, "Starting acc_base_seqin main phase" );
    $display("%t Starting sequence acc_seq run_phase",$time);
    acc_seq_obj.start(env.agt.sqr);  

    forever begin 
        if(env.vif.finish==1) // drope objection condition becaus eit is outptu signal from DUT to show completion of outputs 
        begin 
           phase.drop_objection( this , "Finished acc_seq in main phase" );
           @(env.vif.monitor_cb);
        end 
         else 
         @(env.vif.monitor_cb);

    end 

  endtask: run_phase

  //---------------------------------------
  // end_of_elobaration phase
  //---------------------------------------   
 function void report_phase(uvm_phase phase);
   uvm_report_server svr;
   super.report_phase(phase);
   
   svr = uvm_report_server::get_server();
   if(svr.get_severity_count(UVM_FATAL)+svr.get_severity_count(UVM_ERROR)>0) begin
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

endclass : acc_model_base_test