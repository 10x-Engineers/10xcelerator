class c_1267_1;
    integer i = -210;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1267_1;
    c_1267_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxxx1z0xzzz0101011xx1z11000z11xxzzzzzxzzxxzxzzxxxxxzxzxxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
