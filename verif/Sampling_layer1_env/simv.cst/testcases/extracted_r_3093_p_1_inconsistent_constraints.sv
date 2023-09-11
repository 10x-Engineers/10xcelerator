class c_3093_1;
    integer i = -514;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3093_1;
    c_3093_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x01x0z0z11100101xzzz0zx0zx110x0xzxzzzzzxxzxzzxzxxzzzzxxzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
