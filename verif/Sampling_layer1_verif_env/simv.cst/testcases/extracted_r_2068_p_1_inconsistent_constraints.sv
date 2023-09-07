class c_2068_1;
    integer i = -343;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2068_1;
    c_2068_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x11z1zxzx11xx10xz01xzx1x1xxxz0zzzxxzxxzzzxxxzxzzxzzxxzxzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
