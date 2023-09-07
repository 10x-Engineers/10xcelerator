class c_3171_1;
    integer i = -527;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3171_1;
    c_3171_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011zxzzzxx1x1zxz11xx10xz0100x1x1zzxzxzxzxzzxxzzxxzzxxxxxxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
