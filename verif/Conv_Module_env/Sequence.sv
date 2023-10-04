 `include "parameters.svh"

class acc_seq  extends uvm_sequence #(acc_seq_item);
   
    `uvm_object_utils(acc_seq )

     // `uvm_object_param_utils(acc_seq #(input_size,bias_size,kernel_size,input_matrix_size, output_size))

    function new (string name = "acc_seq");
        super.new(name);
    endfunction


int i =1;
    task body();
    //staring value 
        acc_seq_item tr;

      repeat(`INPUT_MATRIX_SIZE*`INPUT_MATRIX_SIZE) begin//connect with sequencer and DUT 
        `uvm_do(tr);//_with (tr,{tr.input_port==i;}) 
        i++;

        end
           

    endtask

endclass