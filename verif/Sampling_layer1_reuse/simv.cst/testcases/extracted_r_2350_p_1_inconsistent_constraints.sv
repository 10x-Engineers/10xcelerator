class c_2350_1;
    integer i = -390;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2350_1;
    c_2350_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz0xzz111zxz00zxxxz1zxxx111zx10xxzzxzzxzzzzzxxxxxxzzzzxzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
