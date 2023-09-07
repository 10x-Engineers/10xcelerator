class c_581_1;
    integer i = -579;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_581_1;
    c_581_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1111z0zz101xx0xxzx01zz0zzxzx0xzxxzzxzzxxxzxxzzxzzxxzzzxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
