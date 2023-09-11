////////////////////////////////////////////////////////// Using TLM FIFO ///////////////////////////////////////////////////

class conv_layer_1_scoreboard extends uvm_scoreboard;
   `uvm_component_utils(conv_layer_1_scoreboard)

   uvm_analysis_export#(temp_seq_item) export_after; // From monitor
   uvm_tlm_analysis_fifo#(temp_seq_item) after_fifo;

   temp_seq_item transaction_after;
   string error_message;

   function new(string name, uvm_component parent);
      super.new(name, parent);
      transaction_after = new("transaction_after");
   endfunction: new

   virtual function void build_phase(uvm_phase phase);
      super.build_phase(phase);

      export_after = new("export_after", this);
      after_fifo = new("after_fifo", this);
   endfunction: build_phase

   virtual function void connect_phase(uvm_phase phase);
      export_after.connect(after_fifo.analysis_export);
   endfunction: connect_phase

   virtual task run_phase(uvm_phase phase);
      super.run_phase(phase);

      forever begin
         after_fifo.get(transaction_after);

         if (transaction_after.prev_output > 0) begin
            if (transaction_after.prev_output > 'h01000000)
               transaction_after.prev_output = 'h01000000;
         end else
            transaction_after.prev_output = 0;

         if (transaction_after.prev_output == transaction_after.after_output) begin
            `uvm_info(get_type_name(), "Relu Scoreboard: DATA MATCHED!", UVM_LOW);
         end else begin
            error_message = $sformatf("Scoreboard Output is: %h, DUT Output is: %h", transaction_after.prev_output, transaction_after.after_output);
            `uvm_error("Relu Scoreboard: DATA MIS-MATCHED!", error_message);
         end
      end
   endtask

endclass: conv_layer_1_scoreboard
