class c_259_1;
    integer i = -42;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_259_1;
    c_259_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xz10zxx000z0z1x01001zxx0zxzzz0xzxxxzzzxzxxzzzxzxxxzzzzzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
