class c_1073_1;
    integer i = -177;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1073_1;
    c_1073_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxx1z1z10000zz0z101100x1000zz11zzzxxxzzxzzxzxxxxzxxzzzzxzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
