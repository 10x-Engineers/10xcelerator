////////////////////////////////////////////////////////// Using TLM FIFO ///////////////////////////////////////////////////

class samp_scoreboard extends uvm_scoreboard;
    `uvm_component_utils(samp_scoreboard)

    uvm_analysis_export #(samp_seq_item) export_before;  // from driver 
    uvm_analysis_export #(samp_seq_item) export_after;   // from monitor 

    uvm_tlm_analysis_fifo #(samp_seq_item) before_fifo;
    uvm_tlm_analysis_fifo #(samp_seq_item) after_fifo;

    samp_seq_item transaction_before;
    samp_seq_item transaction_after;

    logic [15:0] temp_output = 0;

    logic [15:0] temp_input[576];
    logic [15:0] input_temp[4];   // for sending to the function 
    // Variables for iterations 
    integer i1 = 0;
    integer i2 = 0;
    integer j2 = 0;
    integer t = 0; // for invalid values jump 
    integer out_count = 0;
    string info_message;
    string error_message;

    function new(string name, uvm_component parent);
        super.new(name, parent);
        transaction_before = new("transaction_before");
        transaction_after = new("transaction_after");
    endfunction: new

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        export_before = new("export_before", this);
        export_after = new("export_after", this);
        before_fifo = new("before_fifo", this);
        after_fifo = new("after_fifo", this);
    endfunction: build_phase

    virtual function void connect_phase(uvm_phase phase);
        export_before.connect(before_fifo.analysis_export);
        export_after.connect(after_fifo.analysis_export);
    endfunction: connect_phase

    function automatic logic[16] avg(logic [16] array[4]);
        logic [16] out = 0;
        logic [32] temp = 0;
        for (int i = 0; i < 4; i++) begin
            temp = temp + array[i];
        end
        out = temp / 4;
        return out;
    endfunction

    virtual task run_phase(uvm_phase phase);
        super.run_phase(phase);
        run();
    endtask

    virtual task run();
        forever begin  // input populating in internal array 
            before_fifo.get(transaction_before);
            temp_input[i1] = transaction_before.Input_Pixel;
            i1++;

            if (i1 == 576) begin 
                break;
            end 
        end

        for (int i = 0; out_count != 144; i = i + 2) begin 
            j2 = i;
            for (int j = i; i2 < 4; j++) begin 
                input_temp[i2] = temp_input[j];

                if (j - j2 == 1) begin 
                    j = j + 22; 
                    j2 = j2 + 24; 
                end 
                i2++;
            end 

            // // //****
            after_fifo.get(transaction_after);
            temp_output = avg(input_temp);

            if (temp_output == transaction_after.Output_Pixel) begin 
                `uvm_info(get_type_name(), "DATA MATCHED!", UVM_LOW);
            end else begin
                for (int m = 0; m < 4; m++) begin 
                    info_message = $sformatf("Matrix is : %d", input_temp[m]);
                    `uvm_info(get_type_name(), info_message, UVM_LOW);
                end 
                error_message = $sformatf("Scoreboard Output is: %h, DUT Output is: %h", temp_output, transaction_after.Output_Pixel);
                `uvm_error("DATA MIS-MATCHED!", error_message);
            end
            // //****
            i2 = 0; 
            if (i - t == 22) begin 
                i = i + 24;
                t = i + 2; 
            end 
            out_count++;
        end 
    endtask
endclass: samp_scoreboard
