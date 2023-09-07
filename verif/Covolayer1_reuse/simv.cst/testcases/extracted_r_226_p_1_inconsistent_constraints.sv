class c_226_1;
    integer i = -224;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_226_1;
    c_226_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xzzzxx1x11zz0z0xxx00zx10xxz1zzxxzxzxzxxzzzxxxzxzxzzzzzxxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
