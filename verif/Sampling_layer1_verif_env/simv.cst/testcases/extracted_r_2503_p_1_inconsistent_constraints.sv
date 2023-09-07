class c_2503_1;
    integer i = -416;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2503_1;
    c_2503_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z00010zx1x01z00x1zzz1111zzzzz0zzzxxxxzxzzxxzxxzzxzzxxzzxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
