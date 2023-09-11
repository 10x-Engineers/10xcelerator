class c_2842_1;
    integer i = -472;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2842_1;
    c_2842_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0xx0zx10101zzz110zxzzzz1xzz101zxxxxzxzzzzzzxxxxzzzxzxzxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
