class c_565_1;
    integer i = -93;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_565_1;
    c_565_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz00zxxzx0xz01zzzxx00111z0xxx111xxxzxxzxzxzzzxxzzxzzxxxzzzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
