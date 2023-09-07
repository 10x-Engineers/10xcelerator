class c_1705_1;
    integer i = -283;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1705_1;
    c_1705_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1xx00111zxx1111111001101x100z1zxzxxxzxzzxzxxxxzzzxxxzzzxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
