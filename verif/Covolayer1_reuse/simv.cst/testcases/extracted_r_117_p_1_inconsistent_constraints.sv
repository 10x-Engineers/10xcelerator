class c_117_1;
    integer i = -115;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_117_1;
    c_117_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxzz01z1110zx1zx1zx01x11x1x11zxzzxzzzxxzzzzxzzxzzxxxxzxxzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
