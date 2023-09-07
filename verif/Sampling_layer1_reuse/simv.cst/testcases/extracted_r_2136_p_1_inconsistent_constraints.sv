class c_2136_1;
    integer i = -354;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2136_1;
    c_2136_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz11100zzzz10x1zzxz11x0z10xx01zxxzzxxzxzzzxxxzxxxzzzxxxxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
