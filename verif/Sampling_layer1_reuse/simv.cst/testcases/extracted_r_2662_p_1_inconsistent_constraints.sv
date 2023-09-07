class c_2662_1;
    integer i = -442;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2662_1;
    c_2662_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xzx00x111x111x000z11xxz1zzxzx1zzzxxxxzxzxxzzzxzxzzzxxxzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
