class c_1761_1;
    integer i = -292;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1761_1;
    c_1761_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx01010xz01zzz0zx110zx0xz0xzx00zzzxzzzxxzxzxzxzzxzxxzxzzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
