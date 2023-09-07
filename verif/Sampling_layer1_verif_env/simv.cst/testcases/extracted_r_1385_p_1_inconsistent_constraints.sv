class c_1385_1;
    integer i = -229;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1385_1;
    c_1385_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x00x0x1x11xx1xzz0zx0zx1x1zx0xxzxzzzzxxzzzzxzzxxzxzzzzxzzzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
