class c_2232_1;
    integer i = -370;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2232_1;
    c_2232_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00xxx0x10100z0xx0xzzx00zz1x0111xzxzxzzxxzzxzxzzxzxxxxxxxzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
