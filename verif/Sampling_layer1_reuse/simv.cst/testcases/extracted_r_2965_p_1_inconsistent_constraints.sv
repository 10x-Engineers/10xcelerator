class c_2965_1;
    integer i = -493;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2965_1;
    c_2965_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz0000xxz0xxxx00zz110xxzx1z10zxxzzzzxxxxxzxzxxxzxxzzzzxzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
