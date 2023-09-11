class acc_seq_item extends uvm_sequence_item;

   // Define sequence item fields
   rand bit [16-1:0] input_port;
   rand bit [31:0] bias;
   rand bit valid;
   rand bit reset;
   rand bit [32-1:0] output_port;
   rand bit finish;
   rand bit invalid;

   // Register fields to the factory
   `uvm_object_utils_begin(acc_seq_item)
      `uvm_field_int(input_port, UVM_DEFAULT);
      `uvm_field_int(bias, UVM_DEFAULT);
      `uvm_field_int(valid, UVM_DEFAULT);
      `uvm_field_int(reset, UVM_DEFAULT);
      `uvm_field_int(output_port, UVM_DEFAULT);
      `uvm_field_int(finish, UVM_DEFAULT);
      `uvm_field_int(invalid, UVM_DEFAULT);
   `uvm_object_utils_end

   function new(string name = "acc_seq_item");
      super.new(name);
   endfunction

endclass
