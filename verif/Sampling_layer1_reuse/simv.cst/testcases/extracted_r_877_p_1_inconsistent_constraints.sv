class c_877_1;
    integer i = -145;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_877_1;
    c_877_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx0xx1z0zx1z011zx010xz000xxx10xxzxxxzzxzxxzxzxzzzzzxzzzxzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
