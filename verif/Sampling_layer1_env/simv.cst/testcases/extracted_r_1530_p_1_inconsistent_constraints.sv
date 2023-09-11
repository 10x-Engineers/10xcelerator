class c_1530_1;
    integer i = -253;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1530_1;
    c_1530_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xxz01z0x1x11z10zx00z1101zxz0zxzzzxzxzxzxzzxzxxzzzzzzxzzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
