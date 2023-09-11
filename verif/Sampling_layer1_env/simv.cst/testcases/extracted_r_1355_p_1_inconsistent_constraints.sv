class c_1355_1;
    integer i = -224;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1355_1;
    c_1355_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z01z00001x0z0xxz0x0001zzz0110x0zxzzxxxxxxzzxzzzzzzzzzxxxxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
