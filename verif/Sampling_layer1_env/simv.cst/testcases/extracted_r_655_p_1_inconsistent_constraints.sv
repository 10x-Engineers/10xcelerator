class c_655_1;
    integer i = -108;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_655_1;
    c_655_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xzzzz0z0xx010xx1zxzzz0000z111xxzzzxzxzzzxxzzxzxxxzxxxxzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
