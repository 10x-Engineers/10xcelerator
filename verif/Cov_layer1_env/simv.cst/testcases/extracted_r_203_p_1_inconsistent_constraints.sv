class c_203_1;
    integer i = -201;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_203_1;
    c_203_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1000xx0xx0100000xzzz11x1x0011011zzzxzxzxxzxxzxzxxzzzxxzxxxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
