class c_561_1;
    integer i = 561;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_561_1;
    c_561_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x0x1100010zzx0xxz1x01x01z10x00xxxxxxzzxxxzzxzxzxzzxxxzxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
