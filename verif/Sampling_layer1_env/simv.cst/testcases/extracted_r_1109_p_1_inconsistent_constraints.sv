class c_1109_1;
    integer i = -183;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1109_1;
    c_1109_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx101zzx0110zz11100zz01zz0x11zzzxzzxxzzxxzzzxxzzzzxzzxzzzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
