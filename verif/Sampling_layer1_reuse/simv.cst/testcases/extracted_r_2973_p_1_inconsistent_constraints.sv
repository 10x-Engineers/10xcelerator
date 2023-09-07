class c_2973_1;
    integer i = -494;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2973_1;
    c_2973_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x111z101xz0x11xz01z0z00zx1xzz0x1zxxzzxxzzzzzxxxxzzzxzzzxzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
