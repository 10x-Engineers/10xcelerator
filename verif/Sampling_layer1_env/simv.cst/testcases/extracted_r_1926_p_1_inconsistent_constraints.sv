class c_1926_1;
    integer i = -319;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1926_1;
    c_1926_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz01xx0011z00z0z00x01xzxz0xx11x0xzzxxxxzxzxxxxxxzzxxzzzxxxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
