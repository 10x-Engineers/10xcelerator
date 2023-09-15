class acc_seq extends uvm_sequence #(acc_seq_item);
    `uvm_object_utils(acc_seq)

    function new(string name = "acc_seq");
        super.new(name);
    endfunction

    int i = 1;

    task body();
        // Starting value
        acc_seq_item tr;

        repeat (784) begin // Connect with sequencer and DUT
            `uvm_do(tr); 
            tr.input_port = i;
            i++;
        end
    endtask
endclass
