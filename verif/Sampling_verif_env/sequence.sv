class samp_seq extends uvm_sequence #(samp_seq_item);
   
    `uvm_object_utils(samp_seq)
    function new (string name = "samp_seq");
        super.new(name);
    endfunction


int i =1;
    task body();
    //staring value 
        samp_seq_item tr;

      repeat(576) begin//connect with sequencer and DUT 
          tr = samp_seq_item::type_id::create("tr");
     
        `uvm_do(tr);//_with (tr,{tr.Input_Pixel==i;}) 
        i++;

        end
           

    endtask

endclass