class c_3156_1;
    integer i = -524;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3156_1;
    c_3156_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00zz101x0x0xx1x1x10zz10x10x1011zxxxzxxzzxxzxzxzxzzzzzxxzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
