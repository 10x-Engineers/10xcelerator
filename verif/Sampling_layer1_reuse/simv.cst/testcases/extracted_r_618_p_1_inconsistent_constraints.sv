class c_618_1;
    integer i = -101;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_618_1;
    c_618_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0zxzz1xzxxz110x1zxxx011z10x001xzzxzxzzzzzxzxxxzzxzxxzxzxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
