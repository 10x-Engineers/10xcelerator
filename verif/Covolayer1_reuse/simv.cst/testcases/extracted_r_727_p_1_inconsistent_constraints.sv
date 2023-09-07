class c_727_1;
    integer i = -725;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_727_1;
    c_727_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzzz11x1x10111z0x1x0xzxz0xx00xzxxxxzxzzxxxxzxzzzzzzxzxxzzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
