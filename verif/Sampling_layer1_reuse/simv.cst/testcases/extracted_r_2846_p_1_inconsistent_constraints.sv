class c_2846_1;
    integer i = -473;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2846_1;
    c_2846_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxx0zxx0001z1x0x110z0zz0x0xx10zxxzzxxzxzzzxxxxzxzzxzxzzzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
