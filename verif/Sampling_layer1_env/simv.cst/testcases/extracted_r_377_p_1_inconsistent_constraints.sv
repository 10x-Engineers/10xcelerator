class c_377_1;
    integer i = -61;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_377_1;
    c_377_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0001x0xz1xzzz0zxzx1x101xzx0xxzxxzzzxxzxzzxzzxxxzzzzxxxzzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
