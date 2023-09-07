class c_1147_1;
    integer i = -190;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1147_1;
    c_1147_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x101xxz11011z00x1zx0000zx0x01z0zzzzxzxxzxxxzzzxxzzzzzxxxxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
