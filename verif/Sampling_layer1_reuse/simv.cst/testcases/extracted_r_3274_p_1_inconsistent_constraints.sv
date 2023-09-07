class c_3274_1;
    integer i = -544;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3274_1;
    c_3274_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0001z00z10zx01z0zzxx1xx0x1z1x0x0zzxxzxxzxzzxzzxzzxzzxzxxxxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
