
class pass_agent extends uvm_agent;
    pass_monitor mon;
  
    virtual acc_if vif1;
    virtual acc_if vif2;
    virtual acc_if vif3;
    virtual acc_if vif4;
    virtual acc_if vif5;
    virtual acc_if vif6;
    virtual small_if sm_if;
    `uvm_component_utils_begin(pass_agent)
   
 
        `uvm_field_object(mon, UVM_ALL_ON)
    `uvm_component_utils_end

    function new (string name, uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
     
        mon = pass_monitor::type_id::create("mon", this);
      
      if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif1", vif1)) 
      begin
        `uvm_fatal("PASS/AGT/NOVIF", "No virtual interface specified for this agent instance")
      end
        if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif2", vif2)) 
      begin
        `uvm_fatal("PASS/AGT/NOVIF", "No virtual interface specified for this agent instance")
      end
        if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif3", vif3)) 
      begin
        `uvm_fatal("PASS/AGT/NOVIF", "No virtual interface specified for this agent instance")
      end
        if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif4", vif4)) 
      begin
        `uvm_fatal("PASS/AGT/NOVIF", "No virtual interface specified for this agent instance")
      end
        if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif5", vif5)) 
      begin
        `uvm_fatal("PASS/AGT/NOVIF", "No virtual interface specified for this agent instance")
      end
        if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif6", vif6)) 
      begin
        `uvm_fatal("PASS/AGT/NOVIF", "No virtual interface specified for this agent instance")
      end


       if (!uvm_config_db#(virtual small_if)::get(this, "", "sm_if", sm_if)) 
      begin
        `uvm_fatal("PASS/AGT/NOVIF", "No virtual interface specified for this agent instance")
      end


      uvm_config_db#(virtual acc_if)::set( this, "pass_mon", "vif1", vif1);
      uvm_config_db#(virtual acc_if)::set( this, "pass_mon", "vif2", vif2);
      uvm_config_db#(virtual acc_if)::set( this, "pass_mon", "vif3", vif3);
      uvm_config_db#(virtual acc_if)::set( this, "pass_mon", "vif4", vif4);
      uvm_config_db#(virtual acc_if)::set( this, "pass_mon", "vif5", vif5);
      uvm_config_db#(virtual acc_if)::set( this, "pass_mon", "vif6", vif6);
      uvm_config_db#(virtual small_if)::set( this, "pass_mon", "sm_if", sm_if);

   endfunction: build_phase

   virtual function void connect_phase(uvm_phase phase);
   
   endfunction
endclass
