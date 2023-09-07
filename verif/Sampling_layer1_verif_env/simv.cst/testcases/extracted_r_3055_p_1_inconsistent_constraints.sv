class c_3055_1;
    integer i = -508;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3055_1;
    c_3055_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111z1zz0xxz0zx10xzzzxz01xx0zzxxzzxzxzzxzzxxzzzzxzxxzxzzxzxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
