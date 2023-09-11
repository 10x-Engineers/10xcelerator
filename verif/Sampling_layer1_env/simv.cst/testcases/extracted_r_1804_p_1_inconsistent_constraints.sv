class c_1804_1;
    integer i = -299;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1804_1;
    c_1804_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzxx0x0z1x0xzxx11100zxxx0x1zz11zxxzzzzzxxzxxzzxxzxzxxzzzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
