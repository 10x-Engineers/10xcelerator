//-----------------------------------------
// Acc Monitor class
//-----------------------------------------
`define MIF this.vif.monitor.monitor_cb

class acc_monitor extends uvm_monitor;
    int number = 0;
    virtual acc_if vif;
    uvm_analysis_port #(acc_seq_item) ap;
    `uvm_component_utils(acc_monitor)

    function new(string name, uvm_component parent = null);
        super.new(name, parent);
        ap = new("ap", this);
    endfunction: new

    // Build Phase - Get a handle to the virtual interface from agent/config_db
    virtual function void build_phase(uvm_phase phase);
        if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif", vif)) begin
            `uvm_fatal("acc/MON/NOVIF", "No virtual interface specified for this monitor instance");
        end
    endfunction

    acc_seq_item tr;

    virtual task run_phase(uvm_phase phase);
        super.run_phase(phase);
        forever begin
            if (`MIF.invalid == 0) begin
                tr = acc_seq_item::type_id::create("tr", this);
                tr.output_port = `MIF.output_port;
                tr.finish = `MIF.finish;
                tr.invalid = `MIF.invalid;
                ap.write(tr);
            end
            @(`MIF);
        end
    endtask: run_phase
endclass: acc_monitor
