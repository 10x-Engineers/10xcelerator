
////////////////////////////////////////////////////////// Using TLM FIFO ///////////////////////////////////////////////////

class conv_layer_1_scoreboard extends uvm_scoreboard;
     `uvm_component_utils(conv_layer_1_scoreboard)

     uvm_analysis_export #(temp_seq_item) export_after;//from monitor 
     uvm_tlm_analysis_fifo #(temp_seq_item) after_fifo;

     temp_seq_item transaction_after;

     function new(string name, uvm_component parent);
          super.new(name, parent);
          transaction_after    = new("transaction_after");
     endfunction: new

     virtual function void build_phase(uvm_phase phase);
          super.build_phase(phase);

          export_after        = new("export_after", this);
          after_fifo        = new("after_fifo", this);
       
     endfunction: build_phase

     virtual function void connect_phase(uvm_phase phase);
          export_after.connect(after_fifo.analysis_export);
     endfunction: connect_phase

  
  	virtual task run_phase(uvm_phase phase);
		super.run_phase(phase);

forever begin
 after_fifo.get(transaction_after);

			if(transaction_after.prev_output1>0)
			begin
				if(transaction_after.prev_output1>'h01000000)
					transaction_after.prev_output1='h01000000;
               end
			else
				transaction_after.prev_output1=0;
     
	/////////////////////////////////2
	
			if(transaction_after.prev_output2>0)
			begin
				if(transaction_after.prev_output2>'h01000000)
					transaction_after.prev_output2='h01000000;
               end
			else
				transaction_after.prev_output2=0;
/////////////////////////////////3

			if(transaction_after.prev_output3>0)
			begin
				if(transaction_after.prev_output3>'h01000000)
					transaction_after.prev_output3='h01000000;
               end
			else
				transaction_after.prev_output3=0;
/////////////////////////////////4

			if(transaction_after.prev_output4>0)
			begin
				if(transaction_after.prev_output4>'h01000000)
					transaction_after.prev_output4='h01000000;
               end
			else
				transaction_after.prev_output4=0;
	
/////////////////////////////////5

			if(transaction_after.prev_output5>0)
			begin
				if(transaction_after.prev_output5>'h01000000)
					transaction_after.prev_output5='h01000000;
               end
			else
				transaction_after.prev_output5=0;
	
/////////////////////////////////6
	
			if(transaction_after.prev_output1>6)
			begin
				if(transaction_after.prev_output6>'h01000000)
					transaction_after.prev_output6='h01000000;
               end
			else
				transaction_after.prev_output6=0;


if(transaction_after.prev_output1==transaction_after.after_output1 && transaction_after.prev_output2==transaction_after.after_output2 && transaction_after.prev_output3==transaction_after.after_output3 && transaction_after.prev_output4==transaction_after.after_output4 && transaction_after.prev_output5==transaction_after.after_output5 && transaction_after.prev_output6==transaction_after.after_output6)
             begin 

                    `uvm_info(get_type_name(),"Main Scoreboard Test: PASSED!", UVM_LOW);
                   
               end 

  else
               begin 
                      `uvm_error( get_type_name(),"Main Scoreboard Test: Fail!" );
end
end
     
    endtask
    
endclass: conv_layer_1_scoreboard





