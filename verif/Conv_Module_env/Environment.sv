typedef acc_scoreboard;

class acc_env extends uvm_env;

   `uvm_component_utils(acc_env)

   acc_agent agt;
   acc_scoreboard scb;
   virtual acc_if vif;

   function new(string name, uvm_component parent = null);
      super.new(name, parent);
   endfunction

   // Build phase - Construct agent and get virtual interface handle from the test and pass it down to the agent
   function void build_phase(uvm_phase phase);
      agt = acc_agent::type_id::create("agt", this);
      scb = acc_scoreboard::type_id::create("scb", this);
      if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif", vif)) begin
         `uvm_fatal("Acc/AGT/NOVIF", "No virtual interface specified for this env instance")
      end
      uvm_config_db#(virtual acc_if)::set(this, "agt", "vif", vif);
   endfunction : build_phase

   virtual function void connect_phase(uvm_phase phase);
      agt.mon.ap.connect(scb.export_after);
      agt.drv.ap.connect(scb.export_before);
      uvm_report_info("acc_env::", "connect_phase, Connected Monitor to scoreboard");
   endfunction

endclass : acc_env
