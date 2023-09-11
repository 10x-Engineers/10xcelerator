class c_341_1;
    integer i = -55;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_341_1;
    c_341_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0xz01x011z0z11x1x100z101xx01x1zxzzzxxzxzxzzxxxzxxxxzxxxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
