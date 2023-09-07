class samp_sequencer extends uvm_sequencer #(samp_seq_item);

    `uvm_component_utils(samp_sequencer)
    
  function new (string name , uvm_component parent=null);
        super.new(name,parent);
    endfunction

    

endclass