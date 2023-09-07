class c_336_1;
    integer i = -334;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_336_1;
    c_336_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10xx00z10zz001z0z0xx1x1x000xxzzzxxxxxxzxzzxxxzxxzxzxzxzxzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
