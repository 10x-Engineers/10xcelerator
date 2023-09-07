class c_2072_1;
    integer i = -344;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2072_1;
    c_2072_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x01zxx1010xz00x11xxz111zzxz0zzzzzzzzzzzzxzzxxxxzzzxzzxxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
