class c_3241_1;
    integer i = -539;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3241_1;
    c_3241_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0111001zzzxxx1x111z1x0001100x1zzzzxzxxzzxxzzzxzxzxxxzzzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
