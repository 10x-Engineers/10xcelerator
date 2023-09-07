class c_2565_1;
    integer i = -426;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2565_1;
    c_2565_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10z1x0zx111101xzx10x0z00z1zz0z0xxzxzxzzzxxxzzzzxzxxxxzzzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
