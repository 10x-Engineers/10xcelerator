class c_646_1;
    integer i = -106;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_646_1;
    c_646_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx10z111011001zz1x0xx0zzx10z11x1xzzzxzzzxzxxzzxxzzxxxzzxzzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
