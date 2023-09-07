class c_182_1;
    integer i = 182;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_182_1;
    c_182_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz1x01z0111zxx0zzx0x10z1xxx01xxxxxzxxxzxxzxxzxxzxxxxxxzxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
