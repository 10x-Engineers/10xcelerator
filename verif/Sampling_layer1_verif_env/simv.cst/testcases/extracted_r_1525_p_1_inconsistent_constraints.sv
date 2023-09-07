class c_1525_1;
    integer i = -253;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1525_1;
    c_1525_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1111x0x1x11xx1zzx0xxxxz0010xzxzxzzzzxzzzzzzxxxxzzzzzxzxxzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
