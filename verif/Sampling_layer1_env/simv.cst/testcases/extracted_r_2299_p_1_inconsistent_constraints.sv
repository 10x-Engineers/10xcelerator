class c_2299_1;
    integer i = -382;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2299_1;
    c_2299_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz10z0z10z1z00x0zzx01zz0x1x11xzxxzxxxzxzzxzzzzzxxxxxxzxxxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
