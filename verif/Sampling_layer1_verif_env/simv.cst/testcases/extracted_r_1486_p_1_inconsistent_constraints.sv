class c_1486_1;
    integer i = -246;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1486_1;
    c_1486_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1101x000001010zzz01z0100z011x0zxzxxzxzzzzxzzzxzzxxzxxzzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
