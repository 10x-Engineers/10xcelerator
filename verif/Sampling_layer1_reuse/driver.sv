
`define DIF this.vif.driver.driver_cb
typedef samp_agent;
typedef samp_scoreboard;

class samp_driver extends uvm_driver #(samp_seq_item);
    // logic [31:0] store_data_new;

    virtual samp_if vif;
   integer count =0;
    `uvm_component_utils(samp_driver)
  
    uvm_analysis_port #(samp_seq_item) ap;

  function new (string name, uvm_component parent=null);
        super.new(name,parent);
    ap = new("ap", this);
    endfunction


    function void build_phase (uvm_phase phase);
//      samp_agent agent;
     super.build_phase(phase);
//      if ($cast(agent, get_parent()) && agent != null) begin
//          vif = agent.vif;
//      end
//       if begin
        if (!uvm_config_db #(virtual samp_if)::get(this,"", "vif",vif))
          begin
          `uvm_fatal("No VIF", {"Virtual interface must be set             for:",get_full_name(),".vif"});
          end
//       end
    endfunction

    virtual task run_phase (uvm_phase phase);
      super.run_phase(phase);
      




      //  `DIF.valid <= 1;
        
   
     
      
         `DIF.Input_Reset <= 0;
         `DIF.Input_Valid  <= 1;
         `DIF.Input_Finish  <= 0;
          @(`DIF);
    
        
        forever begin
          	 samp_seq_item tr;
           if(count==576)
           begin 
           `DIF.Input_Valid  <= 0;
           `DIF.Input_Finish  <= 1;
           end 
         
             seq_item_port.get_next_item(tr);
            ap.write(tr); //pass to scoreboard
            `DIF.Input_Pixel  <= tr.Input_Pixel;
            seq_item_port.item_done();
             count=count+1;
      
        @(`DIF);
        
        end

    endtask

 

endclass