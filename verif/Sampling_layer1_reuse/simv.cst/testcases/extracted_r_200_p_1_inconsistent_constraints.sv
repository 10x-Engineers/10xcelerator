class c_200_1;
    integer i = -32;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_200_1;
    c_200_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxzx0x001x000101000001xzz11x00xxzxzzzxzxzzzzzxzxzzxxzzxzxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
