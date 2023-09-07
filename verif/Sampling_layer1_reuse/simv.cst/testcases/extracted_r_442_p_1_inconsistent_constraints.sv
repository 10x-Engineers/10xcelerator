class c_442_1;
    integer i = -72;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_442_1;
    c_442_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110000z0xxz0x1x1x0x10z11xzzx1x1xxxxxzzzxxzxzzzxzzzxzzxzzxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
