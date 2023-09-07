class c_828_1;
    integer i = -136;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_828_1;
    c_828_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xzx10zzz00z1z0z0xx0z0z11x0zxx0zxzzzxxxzzzzzzzxxxzxxxzxxzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
