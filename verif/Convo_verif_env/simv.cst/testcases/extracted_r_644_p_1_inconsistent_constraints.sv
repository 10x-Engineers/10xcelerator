class c_644_1;
    integer i = 644;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_644_1;
    c_644_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0x11zx10zzzz1zzx0xx0x01z100zzxzxzzxzxxxzxzxzzzzxzxzxxzzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
