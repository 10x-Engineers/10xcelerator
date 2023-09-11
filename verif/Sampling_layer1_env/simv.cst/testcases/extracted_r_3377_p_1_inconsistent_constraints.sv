class c_3377_1;
    integer i = -561;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3377_1;
    c_3377_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0xx0100xx0z1z0xzzz0z101010zx0xxzxxzzzzzzzzxxzxxzzxzxzzzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
