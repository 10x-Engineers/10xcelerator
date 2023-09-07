class c_2844_1;
    integer i = -472;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2844_1;
    c_2844_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zzx10xxz01z0zz00z01x000x010x10xxzxxzxxzzzxxxzzxzxxxxxzzxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
