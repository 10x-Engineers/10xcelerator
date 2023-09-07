class c_998_1;
    integer i = -165;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_998_1;
    c_998_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzx1xzzxzx0zx00x1x101x0z0xxz01xxzxxxxzxxxxxxzxzzzzxzxxxxxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
