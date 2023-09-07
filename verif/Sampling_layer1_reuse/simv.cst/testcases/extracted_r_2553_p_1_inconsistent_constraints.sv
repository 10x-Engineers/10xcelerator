class c_2553_1;
    integer i = -424;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2553_1;
    c_2553_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzzz0x0x1zz11x0zxzxxx000xz0z00zxxzxzzxzzzzzzzxxxzxzzxzxxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
