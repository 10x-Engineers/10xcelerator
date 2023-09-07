class c_2521_1;
    integer i = -419;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2521_1;
    c_2521_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxz11zz0x11xz1x1zx0xxxxx0xzx11xzzzxzxzxzxzxzxxzzxxzzzxzzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
