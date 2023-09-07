class c_1704_1;
    integer i = -282;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1704_1;
    c_1704_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z0xx11x10zz01xxx0xzz0zxzx10x10xzzxxxxxxxzzxzxzxzzxxxzxxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram