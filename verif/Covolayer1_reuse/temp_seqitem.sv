// this is to make possible porting between Environmnet and main scoreboard 



class temp_seq_item extends uvm_sequence_item;



// int output_bits= 32; // fr time being hardcoding values 
// int input_bits =16;

 // to save outputs of convolution part 
      bit [32-1:0]      prev_output1;
      bit [32-1:0]     prev_output2;
      bit [32-1:0]    prev_output3;
      bit [32-1:0]   prev_output4;
      bit [32-1:0]  prev_output5;
      bit [32-1:0] prev_output6;

// for Relu part 

       bit [32-1:0] after_output1;
       bit [32-1:0] after_output2;
       bit [32-1:0] after_output3;
       bit [32-1:0] after_output4;
       bit [32-1:0] after_output5;
       bit [32-1:0] after_output6;


 //register to factory 
  `uvm_object_utils_begin (temp_seq_item)
       `uvm_field_int(prev_output1,UVM_DEFAULT);
       `uvm_field_int(prev_output2,UVM_DEFAULT);
       `uvm_field_int(prev_output3,UVM_DEFAULT);
       `uvm_field_int(prev_output4,UVM_DEFAULT);
       `uvm_field_int(prev_output5,UVM_DEFAULT);
       `uvm_field_int(prev_output6,UVM_DEFAULT);
       `uvm_field_int(after_output1,UVM_DEFAULT);
       `uvm_field_int(after_output2,UVM_DEFAULT);
       `uvm_field_int(after_output3,UVM_DEFAULT);
       `uvm_field_int(after_output4,UVM_DEFAULT);
       `uvm_field_int(after_output5,UVM_DEFAULT);
       `uvm_field_int(after_output6,UVM_DEFAULT);
  
  `uvm_object_utils_end

  function new (string name = "temp_seq_item");
      super.new(name);
  endfunction   

endclass