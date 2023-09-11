class c_2985_1;
    integer i = -496;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2985_1;
    c_2985_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx00100z100x1zxxzz0x111x1zx00zzzxzzxxxxxxxzzxzxxzzzxzxxxxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
