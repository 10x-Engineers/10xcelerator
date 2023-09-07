class c_1062_1;
    integer i = -175;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1062_1;
    c_1062_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0100x11xx0x00x000z100100zzz101zzxxzxxxxxzxzxxxxzxzxxzxxxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
