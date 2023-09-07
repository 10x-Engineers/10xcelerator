class c_728_1;
    integer i = -120;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_728_1;
    c_728_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z00zzzxx0xxz1zz0zzxzzx1zzxzxx0xxxxzxxxxzzzzzzzzzzxxxxxzzxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram