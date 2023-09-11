class c_765_1;
    integer i = -126;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_765_1;
    c_765_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1z00x0111z0z01zz0111xx010z11x1xxxzzzxzxzzzzzzxxzxxzxxzzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
