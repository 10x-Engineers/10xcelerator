class c_123_1;
    integer i = -19;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_123_1;
    c_123_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11x11x00x10011zx10001111z0zz1x1zzzxxzxxxxzxzzxzxxxzxzzzxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
