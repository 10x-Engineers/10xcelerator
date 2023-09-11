class c_474_1;
    integer i = -472;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_474_1;
    c_474_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz0xx1000x1zx11x0z0xzxx0z001xz1zxzxxxzxzxzzxzxxzxxzzxzzzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
