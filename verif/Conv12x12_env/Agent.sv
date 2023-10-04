
class acc_agent extends uvm_agent;

    acc_sequencer sqr;
    acc_driver  drv;
    acc_monitor   mon;
  
    virtual acc_if vif;

    //`uvm_component_param_utils(acc_agent #(input_size,bias_size,kernel_size,input_matrix_size, output_size))

    `uvm_component_utils_begin(acc_agent )
        `uvm_field_object(sqr, UVM_ALL_ON)
        `uvm_field_object(drv, UVM_ALL_ON)
        `uvm_field_object(mon, UVM_ALL_ON)
    `uvm_component_utils_end

    function new (string name, uvm_component parent = null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        sqr = acc_sequencer::type_id::create("sqr", this);
        drv = acc_driver::type_id::create("drv", this);
        mon = acc_monitor::type_id::create("mon", this);
      
      if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif", vif)) 
      begin
        `uvm_fatal("ACC/AGT/NOVIF", "No virtual interface specified for this agent instance")
      end
        uvm_config_db#(virtual acc_if)::set( this, "drv", "vif", vif);
        uvm_config_db#(virtual acc_if)::set( this, "mon", "vif", vif);

   endfunction: build_phase

   virtual function void connect_phase(uvm_phase phase);
        drv.seq_item_port.connect(sqr.seq_item_export);
        uvm_report_info("acc_agent::", "connect_phase, Connected driver to sequencer");
   endfunction

    

endclass