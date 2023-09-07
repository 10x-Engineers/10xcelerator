class c_1131_1;
    integer i = -187;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1131_1;
    c_1131_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x11z1x11x0xx01x0xz11x0zxxx1z001zzxxxxzzzxxzzxxxxxzxzxzzxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
