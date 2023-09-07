class c_1620_1;
    integer i = -268;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1620_1;
    c_1620_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x110111z0x1x0zxz1x0z00x00xzx0100xzzzzxzzxzzzzzxzzxzzxzxxxxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
