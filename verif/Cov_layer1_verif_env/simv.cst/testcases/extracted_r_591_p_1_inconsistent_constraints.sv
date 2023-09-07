class c_591_1;
    integer i = -589;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_591_1;
    c_591_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxzx10zxx0zz1xzxz10z11111z0xz11zzzxxxxzxxzzxzzxxxxxzzzzxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
