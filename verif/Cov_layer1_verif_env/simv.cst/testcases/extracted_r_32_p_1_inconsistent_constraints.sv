class c_32_1;
    integer i = -30;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_32_1;
    c_32_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11x11zxz0zzz010x101xzz111110z0xxzxzxxxxxzzxxxxxzxxxxzzzzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
