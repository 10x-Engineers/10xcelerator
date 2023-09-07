class c_1391_1;
    integer i = -230;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1391_1;
    c_1391_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x0000z01z111x10xzz0x0x1xz1110xzzzxzzzxzxxxzxxxxzxzzzxxxzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
