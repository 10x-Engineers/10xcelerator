class c_3106_1;
    integer i = -516;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3106_1;
    c_3106_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10z0100100x0xx1z0z1000xzzxz0000xzxxxxzzxzxzxxxxxxxxzzzzxzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
