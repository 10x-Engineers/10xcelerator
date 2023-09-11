class c_3257_1;
    integer i = -541;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3257_1;
    c_3257_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzz1zx11x1xxx1x1zzzxz100x11x01xxzxxzxzzxzzzzxxzzzzxxzzzxzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
