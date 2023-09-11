//-----------------------------------------
// Acc Monitor class  
//-----------------------------------------
`define MIF this.vif.monitor.monitor_cb

class pass_monitor extends uvm_monitor;
   virtual acc_if vif;
   virtual small_if sm_if;
   uvm_analysis_port#(temp_seq_item) ap;

   `uvm_component_utils(pass_monitor)

   function new(string name, uvm_component parent = null);
      super.new(name, parent);
      ap = new("ap", this);
   endfunction: new

   virtual function void build_phase(uvm_phase phase);
      if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif", vif)) begin
         `uvm_fatal("acc/MON/NOVIF", "No virtual interface specified for this monitor instance");
      end
      
      if (!uvm_config_db#(virtual small_if)::get(this, "", "sm_if", sm_if)) begin
         `uvm_fatal("acc/MON/NOVIF", "No virtual interface specified for this monitor instance");
      end
   endfunction

   acc_seq_item tr;
  
   virtual task run_phase(uvm_phase phase);
      super.run_phase(phase);
      forever begin
         if (vif.invalid == 0) begin
            temp_seq_item tr;
            tr = temp_seq_item::type_id::create("tr", this);
            //previous values only 2d answers 
            tr.prev_output = vif.output_port; 
            tr.after_output = sm_if.output_port;
            ap.write(tr); //pass to main scoreboard
         end
         @(vif.driver.driver_cb);
      end
   endtask: run_phase
endclass: pass_monitor
