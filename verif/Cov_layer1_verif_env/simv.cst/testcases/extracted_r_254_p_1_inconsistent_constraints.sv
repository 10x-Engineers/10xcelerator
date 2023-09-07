class c_254_1;
    integer i = -252;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_254_1;
    c_254_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx00z0x10x00z0xz10zzzz1zz011xz1zzxxxxzzzxzxzzzxzzxxzzxzxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
