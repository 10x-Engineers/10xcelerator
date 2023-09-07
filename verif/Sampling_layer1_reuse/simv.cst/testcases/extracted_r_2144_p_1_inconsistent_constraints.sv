class c_2144_1;
    integer i = -356;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2144_1;
    c_2144_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x110x1xx01x0xz0x110100zxz0x0xzxzxxxxxzzzxxzzxxzxxxxzxxxzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
