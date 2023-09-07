class wrapper_env  extends uvm_env;

  `uvm_component_utils(wrapper_env)
  
  //---------------------------------------
  // env instances 
  //--------------------------------------- 
    samp_env env1;
    samp_env env2;
    samp_env env3;
    samp_env env4;
    samp_env env5;
    samp_env env6;

    virtual samp_if vif1;
    virtual samp_if vif2;
    virtual samp_if vif3;
    virtual samp_if vif4;
    virtual samp_if vif5;
    virtual samp_if vif6;

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
    //cfg = samp_config::type_id::create("cfg", this);
    env1 = samp_env::type_id::create("env1", this);
    env2 = samp_env::type_id::create("env2", this);
    env3 = samp_env::type_id::create("env3", this);
    env4 = samp_env::type_id::create("env4", this);
    env5 = samp_env::type_id::create("env5", this);
    env6 = samp_env::type_id::create("env6", this);
     
    //
    if (!uvm_config_db#(virtual samp_if)::get(this, "", "vif1", vif1)) begin
       `uvm_fatal("Acc/DRV/NOVIF", "No virtual interface specified for this test instance")
    end 
     if (!uvm_config_db#(virtual samp_if)::get(this, "", "vif2", vif2)) begin
       `uvm_fatal("Acc/DRV/NOVIF", "No virtual interface specified for this test instance")
    end 
     if (!uvm_config_db#(virtual samp_if)::get(this, "", "vif3", vif3)) begin
       `uvm_fatal("Acc/DRV/NOVIF", "No virtual interface specified for this test instance")
    end 
     if (!uvm_config_db#(virtual samp_if)::get(this, "", "vif4", vif4)) begin
       `uvm_fatal("Acc/DRV/NOVIF", "No virtual interface specified for this test instance")
    end 
     if (!uvm_config_db#(virtual samp_if)::get(this, "", "vif5", vif5)) begin
       `uvm_fatal("Acc/DRV/NOVIF", "No virtual interface specified for this test instance")
    end  if (!uvm_config_db#(virtual samp_if)::get(this, "", "vif6", vif6)) begin
       `uvm_fatal("Acc/DRV/NOVIF", "No virtual interface specified for this test instance")
    end 


    uvm_config_db#(virtual samp_if)::set( this, "env1", "vif", vif1);
    uvm_config_db#(virtual samp_if)::set( this, "env2", "vif", vif2);
    uvm_config_db#(virtual samp_if)::set( this, "env3", "vif", vif3);
    uvm_config_db#(virtual samp_if)::set( this, "env4", "vif", vif4);
    uvm_config_db#(virtual samp_if)::set( this, "env5", "vif", vif5);
    uvm_config_db#(virtual samp_if)::set( this, "env6", "vif", vif6);

  endfunction
  
  //---------------------------------------
  // end_of_elobaration phase
  //---------------------------------------  
  virtual function void end_of_elaboration();
    //print's the topology
    print();
  endfunction


endclass : wrapper_env