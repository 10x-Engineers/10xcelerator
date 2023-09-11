class c_2208_1;
    integer i = -366;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2208_1;
    c_2208_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzx0110x1010z0x0zx0x1x10010x00zxzxzzxzxzxzzxzzzxxxxzzxxzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
