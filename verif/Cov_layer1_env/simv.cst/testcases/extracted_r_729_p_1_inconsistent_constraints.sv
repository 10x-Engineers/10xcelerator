class c_729_1;
    integer i = -727;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_729_1;
    c_729_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzz0zz0xx11x000z1xzxzx111z0zz00zxzzzxzzzzxzxzzxxzzxxzxxzzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
