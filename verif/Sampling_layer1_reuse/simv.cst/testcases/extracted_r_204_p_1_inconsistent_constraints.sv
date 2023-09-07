class c_204_1;
    integer i = -32;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_204_1;
    c_204_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0000zxz0xxz0x0z0xx01100x10zx0z1xzxxxzxxzxzxxzzzxzxzzxxzzzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
