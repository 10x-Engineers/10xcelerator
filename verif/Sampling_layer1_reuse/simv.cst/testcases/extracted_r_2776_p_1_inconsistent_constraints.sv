class c_2776_1;
    integer i = -461;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2776_1;
    c_2776_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1xz0zx01z0xzxzx0x1x100zz11xx0zzxzzzzxzxzzxzxxxzxzxxxzxxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
