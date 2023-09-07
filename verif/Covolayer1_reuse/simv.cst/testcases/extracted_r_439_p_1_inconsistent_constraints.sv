class c_439_1;
    integer i = -437;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_439_1;
    c_439_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz0xzzz11x10x10100zx1zx00xx0xx0zzzxzxxxzxzzzzxxzzzzzxxzzzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
