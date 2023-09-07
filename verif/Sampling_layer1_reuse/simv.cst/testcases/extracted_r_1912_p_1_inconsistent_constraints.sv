class c_1912_1;
    integer i = -317;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1912_1;
    c_1912_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111xz0101xzz0xzxx1x01x0z0zx11000zxzzzzzxxxzzzxzxxxxzxxzzxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
