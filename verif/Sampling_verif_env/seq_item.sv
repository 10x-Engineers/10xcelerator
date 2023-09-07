

class samp_seq_item extends uvm_sequence_item;

// int output_bits= 32; // fr time being hardcoding values 
// int input_bits =16;

 rand bit [16-1:0] Input_Pixel;
// rand
 bit  Input_Valid;
 bit  Input_Finish;
 bit Input_Reset;

 bit [16-1:0] Output_Pixel;
 bit Output_Finish;
 bit Output_Valid;


 //register to factory 
  `uvm_object_utils_begin (samp_seq_item)
      `uvm_field_int(Input_Pixel,UVM_DEFAULT);
      `uvm_field_int(Input_Valid,UVM_DEFAULT);
      `uvm_field_int(Input_Finish,UVM_DEFAULT);
      `uvm_field_int(Input_Reset,UVM_DEFAULT);
      `uvm_field_int(Output_Pixel,UVM_DEFAULT);
      `uvm_field_int(Output_Finish,UVM_DEFAULT);
 	  `uvm_field_int(Output_Valid,UVM_DEFAULT);
  
  `uvm_object_utils_end


  function new (string name = "samp_seq_item");
      super.new(name);
  endfunction   

endclass