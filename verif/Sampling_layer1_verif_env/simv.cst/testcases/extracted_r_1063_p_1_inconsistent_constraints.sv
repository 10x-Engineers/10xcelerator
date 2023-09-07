class c_1063_1;
    integer i = -176;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1063_1;
    c_1063_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100x10xxz1101z0z1100z101000x1z1zzxzxxzzxxzzxzxzxxzxxxzxzzxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
