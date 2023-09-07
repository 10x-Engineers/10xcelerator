class acc_seq extends uvm_sequence #(acc_seq_item);
   
    `uvm_object_utils(acc_seq)
    function new (string name = "acc_seq");
        super.new(name);
    endfunction


int i =1;
    task body();
    //staring value 
        acc_seq_item tr;

      repeat(784) begin//connect with sequencer and DUT 
          tr = acc_seq_item::type_id::create("tr");
        `uvm_do(tr);//_with (tr,{tr.input_port==i;}) 
        i++;

        end
           

    endtask

endclass
