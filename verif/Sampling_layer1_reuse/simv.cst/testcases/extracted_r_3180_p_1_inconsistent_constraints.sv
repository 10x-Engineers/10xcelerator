class c_3180_1;
    integer i = -528;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3180_1;
    c_3180_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx1z00xxx10zz110x000xxx110z0zx1zxzxxzzzzxzxxzxxzxxzzzzzxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
