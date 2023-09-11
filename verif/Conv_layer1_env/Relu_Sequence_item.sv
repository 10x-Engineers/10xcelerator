class temp_seq_item extends uvm_sequence_item;
    // Output data width
    bit [32-1:0] prev_output;

    // Output data width for Relu
    bit [32-1:0] after_output;

    `uvm_object_utils_begin(temp_seq_item)
        `uvm_field_int(prev_output, UVM_DEFAULT)
        `uvm_field_int(after_output, UVM_DEFAULT)
    `uvm_object_utils_end

    function new(string name = "temp_seq_item");
        super.new(name);
    endfunction
endclass
