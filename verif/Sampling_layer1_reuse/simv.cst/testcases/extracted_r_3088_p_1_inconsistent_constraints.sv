class c_3088_1;
    integer i = -513;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3088_1;
    c_3088_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxzz10x1001x11x1z1zxzzx0xx1zx00zxzzxzxzxxzxzzxxxzzxxzxzzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
