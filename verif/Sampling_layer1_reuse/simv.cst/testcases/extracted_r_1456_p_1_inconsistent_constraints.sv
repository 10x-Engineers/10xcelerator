class c_1456_1;
    integer i = -241;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1456_1;
    c_1456_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0110x1z00zz011z11xxz10z01z000110zzzxzxzzxxxzzzxzzzzzxxzxxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
