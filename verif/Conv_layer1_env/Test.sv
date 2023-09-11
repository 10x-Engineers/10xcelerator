class acc_model_base_test extends uvm_test;

   `uvm_component_utils(acc_model_base_test)

   //---------------------------------------
   // env instance 
   //---------------------------------------
   wrapper_env Env;

   //---------------------------------------
   // constructor
   //---------------------------------------
   function new(string name = "acc_model_base_test", uvm_component parent = null);
      super.new(name, parent);
   endfunction : new

   //---------------------------------------
   // build_phase
   //---------------------------------------
   function void build_phase(uvm_phase phase);
      //cfg = acc_config::type_id::create("cfg", this);
      Env = wrapper_env::type_id::create("Env", this);
   endfunction

   //---------------------------------------
   // end_of_elaboration phase
   //---------------------------------------
   virtual function void end_of_elaboration();
      // Print the topology
      print();
   endfunction

   virtual function void connect_phase(uvm_phase phase);
      Env.pass_agt1.mon.ap.connect(Env.sb.export_after);
      Env.pass_agt2.mon.ap.connect(Env.sb.export_after);
      Env.pass_agt3.mon.ap.connect(Env.sb.export_after);
      Env.pass_agt4.mon.ap.connect(Env.sb.export_after);
      Env.pass_agt5.mon.ap.connect(Env.sb.export_after);
      Env.pass_agt6.mon.ap.connect(Env.sb.export_after);

      uvm_report_info("test::", "connect_phase, Connected ENV.ap to main-scoreboard");
   endfunction

   task run_phase(uvm_phase phase);
      $readmemh("kernel_c1_1.txt", Env.env1.scb.kernel);
      $readmemh("kernel_c1_2.txt", Env.env2.scb.kernel);
      $readmemh("kernel_c1_3.txt", Env.env3.scb.kernel);
      $readmemh("kernel_c1_4.txt", Env.env4.scb.kernel);
      $readmemh("kernel_c1_5.txt", Env.env5.scb.kernel);
      $readmemh("kernel_c1_6.txt", Env.env6.scb.kernel);

      Env.env1.scb.bias = 'hfe5836b2;
      Env.env2.scb.bias = 'h01605c77;
      Env.env3.scb.bias = 'hfe7aad5e;
      Env.env4.scb.bias = 'hff771ec4;
      Env.env5.scb.bias = 'h0153a95c;
      Env.env6.scb.bias = 'hfdf97e79;

      Env.env1.scb.number = 1;
      Env.env2.scb.number = 2;
      Env.env3.scb.number = 3;
      Env.env4.scb.number = 4;
      Env.env5.scb.number = 5;
      Env.env6.scb.number = 6;

      Env.env1.agt.mon.number = 1;
      Env.env2.agt.mon.number = 2;
      Env.env3.agt.mon.number = 3;
      Env.env4.agt.mon.number = 4;
      Env.env5.agt.mon.number = 5;
      Env.env6.agt.mon.number = 6;

      fork
         seq(phase);
         ending(phase);
      join
   endtask: run_phase

   task seq(ref uvm_phase phase);
      acc_seq acc_seq_obj;
      acc_seq_obj = acc_seq::type_id::create("acc_seq_obj");
      $display("  before starting Seq ");
      phase.raise_objection(this, "Starting acc_base_seq in the main phase");
      $display("%t Starting sequence acc_seq run_phase", $time);
      acc_seq_obj.start(Env.env1.agt.sqr);  // TODO
   endtask

   task ending(ref uvm_phase phase);
      forever begin
         if (Env.vif6.finish == 1) begin
            phase.drop_objection(this, "Finished acc_seq in main phase");
            @(Env.env6.vif.monitor_cb);
         end
         else begin
            @(Env.env6.vif.monitor_cb);
            Env.env1.vif.invalid = Env.vif6.invalid;
            Env.env2.vif.invalid = Env.vif6.invalid;
            Env.env3.vif.invalid = Env.vif6.invalid;
            Env.env4.vif.invalid = Env.vif6.invalid;
            Env.env5.vif.invalid = Env.vif6.invalid;
         end
      end
   endtask

   //---------------------------------------
   // end_of_elaboration phase
   //---------------------------------------
   function void report_phase(uvm_phase phase);
      uvm_report_server svr;
      super.report_phase(phase);

      svr = uvm_report_server::get_server();
      if (svr.get_severity_count(UVM_FATAL) + svr.get_severity_count(UVM_ERROR) > 0) begin
         `uvm_info(get_type_name(), "---------------------------------------", UVM_NONE)
         `uvm_info(get_type_name(), "----            TEST FAIL          ----", UVM_NONE)
         `uvm_info(get_type_name(), "---------------------------------------", UVM_NONE)
      end
      else begin
         `uvm_info(get_type_name(), "---------------------------------------", UVM_NONE)
         `uvm_info(get_type_name(), "----           TEST PASS           ----", UVM_NONE)
         `uvm_info(get_type_name(), "---------------------------------------", UVM_NONE)
      end
   endfunction

endclass : acc_model_base_test
