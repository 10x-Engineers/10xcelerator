class c_18_1;
    integer i = -16;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_18_1;
    c_18_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111zx0xx0zx0z11x0zzz0zzzz0zx1x0xxxxzzxxxxxxzzzxxzxzxxzzzzxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
