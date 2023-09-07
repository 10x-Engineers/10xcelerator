class c_1876_1;
    integer i = -311;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1876_1;
    c_1876_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z101010z11zz10110zxz0zz000zxz1x1xzzzzxxzxzxxzzzxxzzzzxzxxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
