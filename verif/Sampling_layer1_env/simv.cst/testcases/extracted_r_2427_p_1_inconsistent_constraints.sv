class c_2427_1;
    integer i = -403;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2427_1;
    c_2427_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xxz0xzx000x1111xzz1xzzz01zx1xzzxxzxxzxzzzxxxxxxzxxxxzzxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
