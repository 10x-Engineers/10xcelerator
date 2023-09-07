class c_3170_1;
    integer i = -527;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3170_1;
    c_3170_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101z00x1zzx11x0xxz0x011z0x010000zzzzxzzxzzxzzzzzxzzzxxzzxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
