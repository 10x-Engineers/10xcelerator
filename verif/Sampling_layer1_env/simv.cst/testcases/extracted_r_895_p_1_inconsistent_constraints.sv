class c_895_1;
    integer i = -148;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_895_1;
    c_895_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzxxxz00zzzz1z10zzzz10xxz111zx0xxzzzxxzxzzzxzxzxzxzxzzxxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
