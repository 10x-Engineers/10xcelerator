class c_139_1;
    integer i = -22;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_139_1;
    c_139_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1100001z0xx1zzz110x00xxxzxx1001zzzzzxxzzzzxzzxzxxxxzzzxzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
