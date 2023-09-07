class c_2036_1;
    integer i = -338;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2036_1;
    c_2036_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxzz0x001z11xxz00z1z1zzxzzz0xx0xzzxxzxzzzxxzzxxxzzxxxxxxzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
