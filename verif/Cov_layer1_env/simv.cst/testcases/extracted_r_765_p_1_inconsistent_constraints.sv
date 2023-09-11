class c_765_1;
    integer i = -763;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_765_1;
    c_765_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xzz0z10z010010zz1z11xxz0001z11zxxzxzzxzxxxzxzxzxzzxzxzzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
