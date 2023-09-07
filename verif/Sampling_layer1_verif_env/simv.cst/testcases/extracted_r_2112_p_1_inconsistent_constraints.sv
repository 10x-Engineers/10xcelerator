class c_2112_1;
    integer i = -350;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2112_1;
    c_2112_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x010xzz10xzz1zx1x0xx1101010z00zxzxxzzxzxzzzzzxzzxxxzzzxzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
