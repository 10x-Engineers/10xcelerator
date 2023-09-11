class c_504_1;
    integer i = -82;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_504_1;
    c_504_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zxz0x11xx0x10z11xz1z0zx01z1x00zzzxzzxzzzzzxzxzzzzxzzxxxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
