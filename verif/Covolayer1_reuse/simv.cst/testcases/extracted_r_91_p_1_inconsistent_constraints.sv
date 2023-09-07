class c_91_1;
    integer i = -89;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_91_1;
    c_91_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx10zzzzz01zx1x0101xz110x0x1xz0xzxzzzxzzzzzxzzxxxzxzzzzxxxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
