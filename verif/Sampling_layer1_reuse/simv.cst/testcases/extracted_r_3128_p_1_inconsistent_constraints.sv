class c_3128_1;
    integer i = -520;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3128_1;
    c_3128_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xz01z10zz0z11zxx0x1zxzz00x0z00xzxxxzzxzzxzzzxzxxxzzxzxzxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
