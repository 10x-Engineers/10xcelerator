class c_501_1;
    integer i = -82;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_501_1;
    c_501_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z0zx11x01z11z1x1z1z0z0x1z0xxz1zxxzxxzzxzzzxzxzzzxzzzzxxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
