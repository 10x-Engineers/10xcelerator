class c_2193_1;
    integer i = -364;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2193_1;
    c_2193_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x001xzxxxxzz0xx10zz0xxzxzxz1zzxxxxxxxxxxxxzzzxzxzxxzxzxzzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
