class c_158_1;
    integer i = -25;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_158_1;
    c_158_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00zxxx0xz010x1zxzx1x10xxzzxx0x1xzzxzxxxzxzxzxxzxxzzxzxzzzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
