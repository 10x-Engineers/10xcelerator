class c_1699_1;
    integer i = -282;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1699_1;
    c_1699_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11x0x0x0z0x110xzz0xx1zxxx0z1110xxxxxxxzzzzzxzxzzzzzzxzzzxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
