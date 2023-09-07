class c_709_1;
    integer i = -117;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_709_1;
    c_709_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz1z1100zzzx0xx010z10110zz01zz0zxzzzxxzzzxxzxzzzxzxxzzxxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
