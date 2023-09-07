class c_2796_1;
    integer i = -464;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2796_1;
    c_2796_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000z00x01x0z01xz00z01z00101x0x1zxxzzxxzxzzxzxzxxxxxzxxzxxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
