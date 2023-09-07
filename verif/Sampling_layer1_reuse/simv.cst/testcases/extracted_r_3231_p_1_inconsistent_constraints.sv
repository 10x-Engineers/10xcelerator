class c_3231_1;
    integer i = -537;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3231_1;
    c_3231_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100xz10x1x0111101x0z0x11101x1x1zzxzzxzzxxzxzxzxzxzzxzxxxzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
