class c_132_1;
    integer i = -130;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_132_1;
    c_132_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzxzx1x1x0z1z11z00z0xx0zx0111xzxxzzzzzzxzxzxxzzxzxzzzxxzzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
