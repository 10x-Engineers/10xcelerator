class c_1720_1;
    integer i = -285;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1720_1;
    c_1720_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x110x0101xzz100z010zxzzz0xx10z0zxxxxxzzzzzzzzzxzzzzxxxzzxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
