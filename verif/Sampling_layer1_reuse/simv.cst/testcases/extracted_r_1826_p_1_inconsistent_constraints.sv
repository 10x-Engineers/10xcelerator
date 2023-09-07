class c_1826_1;
    integer i = -303;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1826_1;
    c_1826_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx01z001x11x10zx10100z0z1x00xx0xzxzxzxzxxxxxzxzxzzxzzxzzxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
