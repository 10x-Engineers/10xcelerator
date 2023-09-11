////////////////////////////////////////////////////////// Using TLM FIFO ///////////////////////////////////////////////////

// typedef acc_agent;

class acc_scoreboard extends uvm_scoreboard;
   `uvm_component_utils(acc_scoreboard)

   uvm_analysis_export#(acc_seq_item) export_before;  // from driver
   uvm_analysis_export#(acc_seq_item) export_after;   // from monitor

   uvm_tlm_analysis_fifo#(acc_seq_item) before_fifo;
   uvm_tlm_analysis_fifo#(acc_seq_item) after_fifo;

   acc_seq_item transaction_before;
   acc_seq_item transaction_after;

   logic [31:0] kernel[25];
   logic [31:0] temp_output = 0;
   logic [15:0] temp_input[784];
   logic [32] bias = 0;
   logic [15:0] input_temp[25];   // for sending to the function

   // Variables for iterations
   integer i1 = 0;
   integer j1 = 0;
   integer i2 = 0;
   integer j2 = 0;
   integer temp; // for iteration
   integer t = 0; // for invalid values jump
   integer out_count = 0;
   string error_message;

   function new(string name, uvm_component parent);
      super.new(name, parent);
      transaction_before = new("transaction_before");
      transaction_after = new("transaction_after");
   endfunction: new

   virtual function void build_phase(uvm_phase phase);
      super.build_phase(phase);

      $readmemh("1s_kernel.hex", kernel);

      export_before = new("export_before", this);
      export_after = new("export_after", this);

      before_fifo = new("before_fifo", this);
      after_fifo = new("after_fifo", this);
   endfunction: build_phase

   virtual function void connect_phase(uvm_phase phase);
      export_before.connect(before_fifo.analysis_export);
      export_after.connect(after_fifo.analysis_export);
   endfunction: connect_phase

   function automatic logic[32] mul_sum(logic [16] array[25], logic[32] kernel[25], logic [32] baise);
      logic [32] out = 0;
      for (int i = 0; i < 25; i++) begin
         out = out + (array[i] * kernel[i]);
      end
      out = out + baise;

      return out;
   endfunction

   virtual task run_phase(uvm_phase phase);
      super.run_phase(phase);
      run();
   endtask

   virtual task run();
      forever begin  // input populating in internal array
         before_fifo.get(transaction_before);
         temp_input[i1] = transaction_before.input_port;
         i1++;
         if (i1 == 784) begin
            break;
         end
      end

      for (int i = 0; out_count != 576; i++) begin
         j2 = i;
         for (int j = i; i2 < 25; j++) begin
            input_temp[i2] = temp_input[j];
            if (j - j2 == 4) begin
               j = j + 23;
               j2 = j2 + 28;
            end
            i2++;
         end

         after_fifo.get(transaction_after);
         temp_output = mul_sum(input_temp, kernel, bias);

         if (temp_output == transaction_after.output_port) begin
            `uvm_info(get_type_name(), "DATA MATCHED!", UVM_LOW);
         end else begin
            error_message = $sformatf(" Scoreboard Output is  : %h , DUT Output is  : %h ", temp_output, transaction_after.output_port);
            `uvm_error("DATA MIS-MATCHED!", error_message);
         end

         i2 = 0;
         if (i - t == 23) begin
            i = i + 4;
            t = i + 1;
         end
         out_count++;
      end
   endtask
endclass: acc_scoreboard
