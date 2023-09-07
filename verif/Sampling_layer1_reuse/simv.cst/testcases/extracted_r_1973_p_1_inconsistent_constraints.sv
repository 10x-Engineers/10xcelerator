class c_1973_1;
    integer i = -327;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1973_1;
    c_1973_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110zxxzzxx0xz01z00xzx10001xxzzxzxzxzxxxxxzzzxzzzxzxxxxzzxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
