`include "parameters.svh"


////////////////////////////////////////////////////////// Using TLM FIFO ///////////////////////////////////////////////////
class acc_scoreboard extends uvm_scoreboard;
    `uvm_component_utils(acc_scoreboard)

    uvm_analysis_export #(acc_seq_item) export_before; // From driver
    uvm_analysis_export #(acc_seq_item) export_after;  // From monitor

    uvm_tlm_analysis_fifo #(acc_seq_item) before_fifo;
    uvm_tlm_analysis_fifo #(acc_seq_item) after_fifo;

    acc_seq_item transaction_before;
    acc_seq_item transaction_after;

    parameter int input_size = `INPUT_SIZE;
    parameter int input_matrix_size = `INPUT_MATRIX_SIZE;
    parameter int output_size = `OUTPUT_SIZE;
    parameter int bias_size = `BIAS_SIZE;
    parameter int kernel_size = `KERNEL_SIZE;


   logic [output_size] kernel[kernel_size*kernel_size];
   logic [output_size] temp_output = 0;
   logic [input_size] temp_input[input_matrix_size*input_matrix_size];
   logic [bias_size] bias = 0;
   int number = 0;
   logic [input_size] input_temp[kernel_size*kernel_size];   // for sending to the function


    logic [output_size] kernel[kernel_size*kernel_size];
    logic [output_size] temp_output = 0;
   logic [input_size] temp_input[input_matrix_size*input_matrix_size];
   logic [bias_size] bias = 0;
   logic [input_size] input_temp[kernel_size*kernel_size];   // for sending to the function

    // Variables for iterations
    integer i1 = 0;
    integer i2 = 0;
    integer j2 = 0;
    integer t = 0; // For invalid values jump
    integer out_count = 0;
    string error_message;
      int stoper = (input_matrix_size-kernel_size)+1; // to stop when outputs are complete 
    function new(string name, uvm_component parent);
        super.new(name, parent);
        transaction_before = new("transaction_before");
        transaction_after = new("transaction_after");
    endfunction: new

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);

        export_before = new("export_before", this);
        export_after = new("export_after", this);

        before_fifo = new("before_fifo", this);
        after_fifo = new("after_fifo", this);
    endfunction: build_phase

    virtual function void connect_phase(uvm_phase phase);
        export_before.connect(before_fifo.analysis_export);
        export_after.connect(after_fifo.analysis_export);
    endfunction: connect_phase

   function automatic logic[output_size] mul_sum(logic [input_size] array[kernel_size*kernel_size], logic[output_size] kernel[kernel_size*kernel_size], logic [bias_size] baise);
      logic [output_size] out = 0;
      for (int i = 0; i < (kernel_size*kernel_size); i++) begin
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
         if (i1 == (input_matrix_size*input_matrix_size)) begin
            break;
         end
      end


  
      for (int i = 0; out_count != (stoper*stoper); i++) begin
         j2 = i;
         for (int j = i; i2 < (kernel_size*kernel_size); j++) begin
            input_temp[i2] = temp_input[j];

           
            if (j - j2 == (kernel_size-1)) begin
              
               //j = j + (input_matrix_size-kernel_size);
               j2 = j2 + input_matrix_size;
               j=j2;
               j--;
              
            end
            i2++;
         end



            // ****
            after_fifo.get(transaction_after);
            temp_output = mul_sum(input_temp, kernel, bias);

            if (temp_output == transaction_after.output_port) begin
                `uvm_info(get_type_name(), "Conv Scoreboard: DATA MATCHED!", UVM_LOW);
            end else begin
                error_message = $sformatf(" Scoreboard Output is  : %h , DUT Output is  : %h ", temp_output, transaction_after.output_port);
                `uvm_error("Conv Scoreboard: DATA MIS-MATCHED!", error_message);
            end
            // ****
            i2 = 0;
            if (i - t == (input_matrix_size-kernel_size)) begin
             // $display("i : %d , t : %d ", i,t );
            i = i + (kernel_size- 1);
            t = i + 1;
              // $display("i : %d , t : %d ", i,t );
         end
            out_count++;
        end
    endtask
endclass: acc_scoreboard
