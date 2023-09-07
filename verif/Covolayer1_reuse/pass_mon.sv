//-----------------------------------------
// Acc Monitor class  
//-----------------------------------------
`define MIF this.vif.monitor.monitor_cb
class pass_monitor extends uvm_monitor;
  virtual acc_if vif1; 
  virtual acc_if vif2; 
  virtual acc_if vif3; 
  virtual acc_if vif4; 
  virtual acc_if vif5; 
  virtual acc_if vif6; 
  virtual small_if sm_if;
    uvm_analysis_port #(temp_seq_item) ap;
  `uvm_component_utils(pass_monitor)

   function new(string name, uvm_component parent = null);
     super.new(name, parent);
    ap = new("ap", this);
   endfunction: new

   virtual function void build_phase(uvm_phase phase);
       if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif1", vif1)) 
       begin
         `uvm_fatal("acc/MON/NOVIF", "No virtual interface specified for this monitor instance");
       end

             if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif2", vif2)) 
       begin
         `uvm_fatal("acc/MON/NOVIF", "No virtual interface specified for this monitor instance");
       end
             if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif3", vif3)) 
       begin
         `uvm_fatal("acc/MON/NOVIF", "No virtual interface specified for this monitor instance");
       end
             if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif4", vif4)) 
       begin
         `uvm_fatal("acc/MON/NOVIF", "No virtual interface specified for this monitor instance");
       end
             if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif5", vif5)) 
       begin
         `uvm_fatal("acc/MON/NOVIF", "No virtual interface specified for this monitor instance");
       end
             if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif6", vif6)) 
       begin
         `uvm_fatal("acc/MON/NOVIF", "No virtual interface specified for this monitor instance");
       end

         if (!uvm_config_db#(virtual small_if)::get(this, "", "sm_if", sm_if)) 
       begin
         `uvm_fatal("acc/MON/NOVIF", "No virtual interface specified for this monitor instance");
       end

   endfunction

  acc_seq_item tr;
  
   virtual task run_phase(uvm_phase phase);
     super.run_phase(phase);
   forever begin
            if(vif6.invalid ==0)
            begin 
          	 temp_seq_item tr;
            tr = temp_seq_item::type_id::create("tr", this);
          //previous values only 2d answers 
          tr.prev_output1=vif1.output_port;
          tr.prev_output2=vif2.output_port;
          tr.prev_output3=vif3.output_port;
          tr.prev_output4=vif4.output_port;
          tr.prev_output5=vif5.output_port;
          tr.prev_output6=vif6.output_port;
          ///after relu answers 
          tr.after_output1=sm_if.output_port1;
          tr.after_output2=sm_if.output_port2;
          tr.after_output3= sm_if.output_port3;
          tr.after_output4= sm_if.output_port4;
          tr.after_output5= sm_if.output_port5;
          tr.after_output6=  sm_if.output_port6;
          ap.write(tr); //pass to main scoreboard
          end
          @(vif1.driver.driver_cb);
          end
   endtask: run_phase
endclass: pass_monitor

