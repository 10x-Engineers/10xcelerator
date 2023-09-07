
class samp_agent extends uvm_agent;

    samp_sequencer sqr;
    samp_driver drv;
    samp_monitor mon;
    virtual samp_if vif;

    `uvm_component_utils_begin(samp_agent)
        `uvm_field_object(sqr, UVM_ALL_ON)
        `uvm_field_object(drv, UVM_ALL_ON)
        `uvm_field_object(mon, UVM_ALL_ON)
    `uvm_component_utils_end

    function new (string name, uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        sqr = samp_sequencer::type_id::create("sqr", this);
        drv = samp_driver::type_id::create("drv", this);
        mon = samp_monitor::type_id::create("mon", this);
      
      if (!uvm_config_db#(virtual samp_if)::get(this, "", "vif", vif)) 
      begin
        `uvm_fatal("SAMP/AGT/NOVIF", "No virtual interface specified for this agent instance")
      end
        uvm_config_db#(virtual samp_if)::set( this, "drv", "vif", vif);
        uvm_config_db#(virtual samp_if)::set( this, "mon", "vif", vif);

   endfunction: build_phase

   virtual function void connect_phase(uvm_phase phase);
        drv.seq_item_port.connect(sqr.seq_item_export);
        uvm_report_info("samp_agent::", "connect_phase, Connected driver to sequencer");
   endfunction

    

endclass
