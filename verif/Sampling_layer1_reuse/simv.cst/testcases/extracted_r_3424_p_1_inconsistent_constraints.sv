class c_3424_1;
    integer i = -569;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3424_1;
    c_3424_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11xzx0x000x1zz11000xz1zx10zx1x0zxxzxzxxzzxxzxzxzzzzzxxzzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
