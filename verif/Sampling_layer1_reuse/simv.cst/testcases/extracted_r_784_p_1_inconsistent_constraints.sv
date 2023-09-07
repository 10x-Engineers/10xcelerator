class c_784_1;
    integer i = -129;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_784_1;
    c_784_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz100111z0xx10110zzz1xz11xx0zx1zzzxzzxxzzxxzzxxxzzzzzzzzxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
