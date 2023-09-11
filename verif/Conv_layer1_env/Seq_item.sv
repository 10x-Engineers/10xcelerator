class acc_seq_item extends uvm_sequence_item;
    // Input data width
    rand bit [16-1:0] input_port;

    // Bias for computation
    bit [31:0] bias;

    // Valid flag
    bit valid;

    // Reset flag
    bit reset;

    // Output data width
    bit [32-1:0] output_port;

    // Finish flag
    bit finish;

    // Invalid flag
    bit invalid;

    // Register to factory
    `uvm_object_utils_begin(acc_seq_item)
        `uvm_field_int(input_port, UVM_DEFAULT)
        `uvm_field_int(bias, UVM_DEFAULT)
        `uvm_field_int(valid, UVM_DEFAULT)
        `uvm_field_int(reset, UVM_DEFAULT)
        `uvm_field_int(output_port, UVM_DEFAULT)
        `uvm_field_int(finish, UVM_DEFAULT)
        `uvm_field_int(invalid, UVM_DEFAULT)
    `uvm_object_utils_end

    function new(string name = "acc_seq_item");
        super.new(name);
    endfunction
endclass
