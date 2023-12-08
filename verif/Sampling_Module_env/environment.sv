typedef samp_scoreboard;

class samp_env extends uvm_env;
    `uvm_component_utils(samp_env)

    // ENV class will have an agent as its sub-component
    samp_agent agt;
    samp_scoreboard scb;

    // Virtual interface for APB interface
    virtual samp_if vif;

    function new(string name, uvm_component parent = null);
        super.new(name, parent);
    endfunction

    // Build phase - Construct agent and get the virtual interface handle from the test and pass it down to the agent
    function void build_phase(uvm_phase phase);
        agt = samp_agent::type_id::create("agt", this);
        scb = samp_scoreboard::type_id::create("scb", this);
        if (!uvm_config_db#(virtual samp_if)::get(this, "", "vif", vif)) begin
            `uvm_fatal("Samp/AGT/NOVIF", "No virtual interface specified for this env instance")
        end
        uvm_config_db#(virtual samp_if)::set(this, "agt", "vif", vif);
    endfunction: build_phase

    virtual function void connect_phase(uvm_phase phase);
        agt.mon.ap.connect(scb.export_after);
        agt.drv.ap.connect(scb.export_before);
        uvm_report_info("samp_env::", "connect_phase, Connected Monitor to scoreboard");
    endfunction
endclass : samp_env
