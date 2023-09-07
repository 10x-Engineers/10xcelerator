class c_336_1;
    integer i = -54;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_336_1;
    c_336_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1111xx0x0zz110zx001xzzz1x0x0101zzzxzzxzxxxxxxxzxxzzxzxxxzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
