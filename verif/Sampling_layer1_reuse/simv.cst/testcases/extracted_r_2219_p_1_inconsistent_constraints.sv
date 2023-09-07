class c_2219_1;
    integer i = -368;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2219_1;
    c_2219_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1111111xz0x111x1x0001z0zx0xz1zxzxxzxzzzxzxzzxzxzzzxxxxzzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
