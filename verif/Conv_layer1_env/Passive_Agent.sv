class pass_agent extends uvm_agent;
   pass_monitor mon;
  
   virtual acc_if vif;
   virtual small_if sm_if;
   
   `uvm_component_utils_begin(pass_agent)
      `uvm_field_object(mon, UVM_ALL_ON)
   `uvm_component_utils_end

   function new(string name, uvm_component parent = null);
      super.new(name, parent);
   endfunction

   virtual function void build_phase(uvm_phase phase);
      mon = pass_monitor::type_id::create("mon", this);
      
      if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif", vif)) begin
         `uvm_fatal("PASS/AGT/NOVIF", "No virtual interface specified for this agent instance")
      end
      
      if (!uvm_config_db#(virtual small_if)::get(this, "", "sm_if", sm_if)) begin
         `uvm_fatal("PASS/AGT/NOVIF", "No virtual interface specified for this agent instance")
      end

      uvm_config_db#(virtual acc_if)::set(this, "mon", "vif", vif);
      uvm_config_db#(virtual small_if)::set(this, "mon", "sm_if", sm_if);
   endfunction: build_phase

endclass
