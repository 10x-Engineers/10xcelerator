class c_2086_1;
    integer i = -346;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2086_1;
    c_2086_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z011zzx1x11xx11110zz1z00zzz1zzzxxzzzzxzzzzxzzzzxzxzxxzzxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
