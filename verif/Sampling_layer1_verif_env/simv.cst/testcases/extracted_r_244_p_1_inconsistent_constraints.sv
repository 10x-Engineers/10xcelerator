class c_244_1;
    integer i = -39;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_244_1;
    c_244_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11010zx11x1xx1zx0100zxx1100x1x1zzzxxzxxzzxzzzxxxzzzxxzzzzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
