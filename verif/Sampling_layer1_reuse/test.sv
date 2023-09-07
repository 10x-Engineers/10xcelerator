class samp_model_base_test extends uvm_test;

  `uvm_component_utils(samp_model_base_test)
wrapper_env Env; 

  //---------------------------------------
  // constructor
  //---------------------------------------
  function new(string name = "samp_model_base_test",uvm_component parent=null);
    super.new(name,parent);
  endfunction : new

  //---------------------------------------
  // build_phase
  //---------------------------------------
  function void build_phase(uvm_phase phase);
    //cfg = samp_config::type_id::create("cfg", this);

Env = wrapper_env::type_id::create("Env", this);

  endfunction
  
  //---------------------------------------
  // end_of_elobaration phase
  //---------------------------------------  
  virtual function void end_of_elaboration();
    //print's the topology
    print();
  endfunction




  task run_phase( uvm_phase phase );
    
fork
  seq(phase);
  ending(phase);
  
join

  endtask: run_phase


task seq ( ref uvm_phase phase);


      samp_seq samp_seq_obj1;
      samp_seq samp_seq_obj2 ;
      samp_seq samp_seq_obj3 ;
      samp_seq samp_seq_obj4 ;
      samp_seq samp_seq_obj5 ;
      samp_seq samp_seq_obj6 ;

  

      samp_seq_obj1 = samp_seq::type_id::create("samp_seq_obj1");
      samp_seq_obj2 = samp_seq::type_id::create("samp_seq_obj2");
      samp_seq_obj3 = samp_seq::type_id::create("samp_seq_obj3");
      samp_seq_obj4 = samp_seq::type_id::create("samp_seq_obj4");
      samp_seq_obj5 = samp_seq::type_id::create("samp_seq_obj5");
      samp_seq_obj6 = samp_seq::type_id::create("samp_seq_obj6");
      phase.raise_objection( this, "Starting samp_base_seqin main phase" );
      $display("  before starting Seq ");
  
fork
     samp_seq_obj1.start(Env.env1.agt.sqr); 
     samp_seq_obj2.start(Env.env2.agt.sqr); 
     samp_seq_obj3.start(Env.env3.agt.sqr); 
     samp_seq_obj4.start(Env.env4.agt.sqr); 
     samp_seq_obj5.start(Env.env5.agt.sqr); 
     samp_seq_obj6.start(Env.env6.agt.sqr); 
join
endtask

task ending ( ref uvm_phase phase );


    forever begin 
        if(Env.vif6.Output_Finish==1)
        begin 
          $display ( " finsish is 1 ");
          #1ns;
          @(Env.env6.vif.monitor_cb);
           phase.drop_objection( this , "Finished samp_seq in main phase" );
           
        end 
         else 
         begin
         @(Env.env6.vif.monitor_cb);
          Env.env1.vif.Output_Valid=Env.vif6.Output_Valid ;
          Env.env2.vif.Output_Valid=Env.vif6.Output_Valid ;
          Env.env3.vif.Output_Valid=Env.vif6.Output_Valid ;
          Env.env4.vif.Output_Valid=Env.vif6.Output_Valid ;
          Env.env5.vif.Output_Valid=Env.vif6.Output_Valid ;
         end
    end 
endtask
  //---------------------------------------
  // end_of_elobaration phase
  //---------------------------------------   
 function void report_phase(uvm_phase phase);
   uvm_report_server svr;
   super.report_phase(phase);
   
   svr = uvm_report_server::get_server();
   if(svr.get_severity_count(UVM_FATAL)+svr.get_severity_count(UVM_ERROR)>0) begin
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

endclass : samp_model_base_test