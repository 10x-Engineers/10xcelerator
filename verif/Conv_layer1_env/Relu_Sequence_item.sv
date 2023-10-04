 `include "parameters.svh"


class temp_seq_item extends uvm_sequence_item;
    // Output data width
    bit [`OUTPUT_SIZE] prev_output;

    // Output data width for Relu
    bit [`OUTPUT_SIZE] after_output;

    `uvm_object_utils_begin(temp_seq_item)
        `uvm_field_int(prev_output, UVM_DEFAULT)
        `uvm_field_int(after_output, UVM_DEFAULT)
    `uvm_object_utils_end

    function new(string name = "temp_seq_item");
        super.new(name);
    endfunction
endclass
