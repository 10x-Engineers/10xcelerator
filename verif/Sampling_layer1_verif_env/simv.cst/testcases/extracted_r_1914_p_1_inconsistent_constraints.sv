class c_1914_1;
    integer i = -317;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1914_1;
    c_1914_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxxx1z101x1x1z00zx111100x1xx10zxxxxzzzzzzxxzxzxxzzxxzzzzzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
