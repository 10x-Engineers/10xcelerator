class c_530_1;
    integer i = -87;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_530_1;
    c_530_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1001xz0xxz1x0z11xx10xzxzzxz100zzzzzxxzzxxxzzzxxzzxzzxzzxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
