class c_916_1;
    integer i = -151;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_916_1;
    c_916_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zx1z011z0x10xz110z01z00zxxzxx1xzzxxzxxxxxxxzxzzxzzzxxzzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
