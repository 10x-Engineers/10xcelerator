class c_423_1;
    integer i = -69;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_423_1;
    c_423_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz0x100xzzxz100x1z0zx10zxxx00xzxxzxzxzxzzxzzxxxzxxxxxxxzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
