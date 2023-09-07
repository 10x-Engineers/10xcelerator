class c_3235_1;
    integer i = -538;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3235_1;
    c_3235_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11000xzx1zx0zz11x0z0zxx1xxx0000xxzxxxzzzxxxzzxxzxxxzzzxzzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
