`define DIF this.vif.driver.driver_cb

typedef acc_agent;
typedef acc_scoreboard;

class acc_driver extends uvm_driver #(acc_seq_item);
    virtual acc_if vif;
    integer count = 0;
    `uvm_component_utils(acc_driver)
    uvm_analysis_port #(acc_seq_item) ap;

    function new(string name, uvm_component parent = null);
        super.new(name, parent);
        ap = new("ap", this);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if (!uvm_config_db#(virtual acc_if)::get(this, "", "vif", vif)) begin
            `uvm_fatal("No VIF", {"Virtual interface must be set for:", get_full_name(), ".vif"});
        end
    endfunction

    virtual task run_phase(uvm_phase phase);
        super.run_phase(phase);

        `DIF.valid <= 1;
        `DIF.reset <= 0;
        @(`DIF);
        @(`DIF);
        forever begin
            acc_seq_item tr;
            seq_item_port.get_next_item(tr);
            ap.write(tr); // Pass to scoreboard
            `DIF.input_port <= tr.input_port;
            seq_item_port.item_done();
            count = count + 1;
            @(`DIF);
        end
    endtask
endclass
