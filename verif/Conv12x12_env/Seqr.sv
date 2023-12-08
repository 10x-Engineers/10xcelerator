class acc_sequencer extends uvm_sequencer #(acc_seq_item);

    `uvm_component_utils(acc_sequencer)
    
  function new (string name , uvm_component parent=null);
        super.new(name,parent);
    endfunction

    

endclass