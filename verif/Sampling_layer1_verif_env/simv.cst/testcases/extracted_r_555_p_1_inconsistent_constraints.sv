class c_555_1;
    integer i = -91;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_555_1;
    c_555_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z010zz0xxz1x00zz0xx1100z1z00zzxzxzzzzzxzzxxzxzzxzxxzxxzxzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
