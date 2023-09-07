class c_1923_1;
    integer i = -319;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1923_1;
    c_1923_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxz000zzzz1zx10x1x00zz10xz01xx1xzzzzxzxzxxxxxzxzzxzxzzzzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
