class c_2835_1;
    integer i = -471;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2835_1;
    c_2835_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x10zxx1zx0xx011z0zx01101xzz1xxxzzzzzzzxxxxzxzxzxzxzxzzxzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
