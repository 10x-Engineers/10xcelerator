class c_1291_1;
    integer i = -214;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1291_1;
    c_1291_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx011zz101x0z111zzxz0xz1111z10z0xzzzzzxzxzzzzzxxzxxzxzzzxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
