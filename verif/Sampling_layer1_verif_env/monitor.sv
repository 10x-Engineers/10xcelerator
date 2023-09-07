//-----------------------------------------
// Acc Monitor class  
//-----------------------------------------
`define MIF this.vif.monitor.monitor_cb


class samp_monitor extends uvm_monitor;

  virtual samp_if vif; 
  uvm_analysis_port #(samp_seq_item) ap;

  `uvm_component_utils(samp_monitor)

   function new(string name, uvm_component parent = null);
     super.new(name, parent);
    ap = new("ap", this);
   endfunction: new

   //Build Phase - Get handle to virtual if from agent/config_db
   virtual function void build_phase(uvm_phase phase);
       if (!uvm_config_db#(virtual samp_if)::get(this, "", "vif", vif)) 
       begin
         `uvm_fatal("samp/MON/NOVIF", "No virtual interface specified for this monitor instance");
       end
   endfunction

  samp_seq_item tr;
  
   virtual task run_phase(uvm_phase phase);
     super.run_phase(phase);
    
     @(`MIF);


     forever begin
      if(`MIF.Output_Valid==1)
      begin 
      
         tr = samp_seq_item::type_id::create("tr", this);
         tr.Output_Pixel =`MIF.Output_Pixel;
          tr.Output_Finish =`MIF.Output_Finish;
          tr.Output_Valid =`MIF.Output_Valid;
          ap.write(tr);
      end
      
       @(`MIF);
       end
   endtask: run_phase
  

endclass: samp_monitor

