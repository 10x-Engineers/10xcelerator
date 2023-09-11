class c_555_1;
    integer i = 555;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_555_1;
    c_555_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0zzz0x11x1x100z11zx1xxz01z00z0xxxzxxxzzzxxxxxxzxzxxzxzzxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
