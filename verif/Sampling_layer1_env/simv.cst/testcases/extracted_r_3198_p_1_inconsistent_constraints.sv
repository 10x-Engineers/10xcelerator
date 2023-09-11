class c_3198_1;
    integer i = -531;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3198_1;
    c_3198_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx001xxz01xx1xx0xzx1z00xzz0z01z0zzxzxzxxxxxxzzxxxzzxxzzxxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
