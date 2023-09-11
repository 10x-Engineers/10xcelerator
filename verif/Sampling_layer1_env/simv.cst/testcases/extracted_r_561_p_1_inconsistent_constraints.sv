class c_561_1;
    integer i = -92;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_561_1;
    c_561_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011101xzxxxx1xzx0zz0z01zx0000111xzzzzzxzzzzzxzzxzzzzxxzxxzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
