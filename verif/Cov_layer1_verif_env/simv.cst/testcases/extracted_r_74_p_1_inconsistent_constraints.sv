class c_74_1;
    integer i = -72;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_74_1;
    c_74_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11x1zxz01xzxxz0000zxz110z11xzzzxzxxzxzxzxzzxxzzzzzzxxzzzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
