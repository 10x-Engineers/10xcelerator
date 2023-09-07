class c_3074_1;
    integer i = -511;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3074_1;
    c_3074_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0100zxx0z10z10z0zz1z1zzx01z1x1x1zxzxxzzxxzzxzxxxzxxxxzxzzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
