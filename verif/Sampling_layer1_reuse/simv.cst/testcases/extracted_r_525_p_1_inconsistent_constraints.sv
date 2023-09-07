class c_525_1;
    integer i = -86;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_525_1;
    c_525_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxzz10zzz0zzzx1x10011xx0zz0xx11xxxxzxzxxxzzxzzxxzzxzzzxzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
