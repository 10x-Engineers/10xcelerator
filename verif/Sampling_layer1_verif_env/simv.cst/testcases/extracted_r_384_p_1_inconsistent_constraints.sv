class c_384_1;
    integer i = -62;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_384_1;
    c_384_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0xzz01z10111zzz01100x1xxx010z0xzxzxxzzzzxxzzzzzxxxxzxxxxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
