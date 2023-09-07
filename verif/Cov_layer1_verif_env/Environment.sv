class wrapper_env  extends uvm_env;

  `uvm_component_utils(wrapper_env)
  
  //---------------------------------------
  // env1 instance 
  //--------------------------------------- 
acc_env env1;
acc_env env2;
acc_env env3;
acc_env env4;
acc_env env5;
acc_env env6;
  
virtual acc_if vif1;
virtual acc_if vif2;
virtual acc_if vif3;
virtual acc_if vif4;
virtual acc_if vif5;
virtual acc_if vif6;
virtual small_if sm_if;

pass_agent pass_agt; 
  //scoreboard 
  conv_layer_1_scoreboard sb ; 
    // uvm_analysis_port #(temp_seq_item) ap;
  //---------------------------------------
  // constructor
  //---------------------------------------

  function new(string name = "wrapper_env",uvm_component parent=null);
    super.new(name,parent);
  endfunction : new

  //---------------------------------------
  // build_phase
  //---------------------------------------
  function void build_phase(uvm_phase phase);
    //cfg = acc_config::type_id::create("cfg", this);
    env1 = acc_env::type_id::create("env1", this);
    env2 = acc_env::type_id::create("env2", this);
    env3 = acc_env::type_id::create("env3", this);
    env4 = acc_env::type_id::create("env4", this);
    env5 = acc_env::type_id::create("env5", this);
    env6 = acc_env::type_id::create("env6", this);
     sb = conv_layer_1_scoreboard::type_id::create("sb", this);
      pass_agt = pass_agent::type_id::create("pass_agt", this);
    //
    if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif1", vif1)) begin
       `uvm_fatal("Acc/DRV/NOVIF", "No virtual interface specified for this test instance")
    end 
     if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif2", vif2)) begin
       `uvm_fatal("Acc/DRV/NOVIF", "No virtual interface specified for this test instance")
    end 
     if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif3", vif3)) begin
       `uvm_fatal("Acc/DRV/NOVIF", "No virtual interface specified for this test instance")
    end 
     if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif4", vif4)) begin
       `uvm_fatal("Acc/DRV/NOVIF", "No virtual interface specified for this test instance")
    end 
     if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif5", vif5)) begin
       `uvm_fatal("Acc/DRV/NOVIF", "No virtual interface specified for this test instance")
    end  if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif6", vif6)) begin
       `uvm_fatal("Acc/DRV/NOVIF", "No virtual interface specified for this test instance")
    end if (!uvm_config_db#(virtual small_if)::get(this, "", "sm_if", sm_if)) begin
       `uvm_fatal("Acc/DRV/NOVIF", "No virtual interface specified for this test instance")
    end 

    uvm_config_db#(virtual acc_if)::set( this, "env1", "vif", vif1);
    uvm_config_db#(virtual acc_if)::set( this, "env2", "vif", vif2);
    uvm_config_db#(virtual acc_if)::set( this, "env3", "vif", vif3);
    uvm_config_db#(virtual acc_if)::set( this, "env4", "vif", vif4);
    uvm_config_db#(virtual acc_if)::set( this, "env5", "vif", vif5);
    uvm_config_db#(virtual acc_if)::set( this, "env6", "vif", vif6);


    uvm_config_db#(virtual acc_if)::set( this, "pass_agt", "vif", vif1);
    uvm_config_db#(virtual acc_if)::set( this, "pass_agt", "vif", vif2);
    uvm_config_db#(virtual acc_if)::set( this, "pass_agt", "vif", vif3);
    uvm_config_db#(virtual acc_if)::set( this, "pass_agt", "vif", vif4);
    uvm_config_db#(virtual acc_if)::set( this, "pass_agt", "vif", vif5);
    uvm_config_db#(virtual acc_if)::set( this, "pass_agt", "vif", vif6);
    uvm_config_db#(virtual small_if)::set( this, "pass_agt", "sm_if", sm_if);
  endfunction
  
  //---------------------------------------
  // end_of_elobaration phase
  //---------------------------------------  
  virtual function void end_of_elaboration();
    //print's the topology
    print();
  endfunction
  

   virtual function void connect_phase(uvm_phase phase);

//because 1 sequence that why connecting all prts to that 1 one 

     env1.agt.drv.ap.connect(env2.scb.export_before);
     env1.agt.drv.ap.connect(env3.scb.export_before);
     env1.agt.drv.ap.connect(env4.scb.export_before);
     env1.agt.drv.ap.connect(env5.scb.export_before);
     env1.agt.drv.ap.connect(env6.scb.export_before);


     uvm_report_info("ENV::", "connect_phase, Driver to scoreboard");
   endfunction

  task run_phase( uvm_phase phase );

        
  endtask: run_phase
endclass : wrapper_env