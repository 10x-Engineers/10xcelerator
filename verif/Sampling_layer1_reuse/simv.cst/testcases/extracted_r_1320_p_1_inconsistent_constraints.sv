class c_1320_1;
    integer i = -218;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1320_1;
    c_1320_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzz1xzzx0zx10xzzx0zxxx1xxz10zx0xzzxzxxzzxxxxzzxzzzxzxxxzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
