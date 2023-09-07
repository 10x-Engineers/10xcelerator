class c_2781_1;
    integer i = -462;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2781_1;
    c_2781_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xz0z11x1z11110z0xzxzx1z1zzzzx0xxxxxxxxxxzzxzzzzxxzzxzxzxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
