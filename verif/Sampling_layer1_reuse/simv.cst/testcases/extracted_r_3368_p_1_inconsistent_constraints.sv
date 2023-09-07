class c_3368_1;
    integer i = -560;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3368_1;
    c_3368_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zz11xx01x010z1x10zzzzz1100010zzxxzzxzxzzxzzxzxzzxxzxzzxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
