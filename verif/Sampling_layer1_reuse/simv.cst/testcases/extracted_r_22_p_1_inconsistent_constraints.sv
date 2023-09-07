class c_22_1;
    integer i = -2;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_22_1;
    c_22_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10zxxxx1xz0z0z1xzx00x1z1101zxxzxzzxzzxxxxzxxzzzzxzzzxxxxxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
