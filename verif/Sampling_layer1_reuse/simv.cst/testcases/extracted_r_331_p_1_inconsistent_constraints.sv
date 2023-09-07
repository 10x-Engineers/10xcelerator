class c_331_1;
    integer i = -54;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_331_1;
    c_331_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0z1z0xx1zxz10zx0zx0x0x1xxz0zzzxxxzxxzzzzxxzxxxzxxxxxxzxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
