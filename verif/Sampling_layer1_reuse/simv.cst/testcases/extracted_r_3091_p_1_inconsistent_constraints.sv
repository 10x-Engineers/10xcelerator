class c_3091_1;
    integer i = -514;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3091_1;
    c_3091_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz00x111zxz1xz110000x000z0z11zxxzxxxxzzzxxzzxzzxzzxzxxzxzxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
