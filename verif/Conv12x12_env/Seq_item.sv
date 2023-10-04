 `include "parameters.svh"

class acc_seq_item extends uvm_sequence_item;


   // Define sequence item fields
   rand bit [`INPUT_SIZE] input_port;
   rand bit [`BIAS_SIZE] bias;
   rand bit valid;
   rand bit reset;
   rand bit [`OUTPUT_SIZE] output_port;
   rand bit finish;
   rand bit invalid;
 

   `uvm_object_utils_begin(acc_seq_item )
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