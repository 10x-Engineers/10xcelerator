class c_1689_1;
    integer i = -280;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1689_1;
    c_1689_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x00x1x1zxx00z010x1xz11x1110z00zzzzxzxzzzzxxxxxxzxzxxzzzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram