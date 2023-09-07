class c_1094_1;
    integer i = -181;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1094_1;
    c_1094_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxz00xx000x10z0z0x1x10z11xx10zxxxzxxxzxxzzxxzzzxzxxxzxzxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
