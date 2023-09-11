class c_15_1;
    integer i = -1;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_15_1;
    c_15_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0xzxzx1zx10zxx0x0x1zxz1zz10xxxzxxxxzxxxzzxxxxzxzzzxxxxzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
