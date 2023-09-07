class c_372_1;
    integer i = -60;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_372_1;
    c_372_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x0xxx0011xz1011zz101zzxzxxz1zzzxzxzzzxxzxzxzzxxxzxxzzzzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
