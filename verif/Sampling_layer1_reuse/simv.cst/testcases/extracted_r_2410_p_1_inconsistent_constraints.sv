class c_2410_1;
    integer i = -400;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2410_1;
    c_2410_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0001z101x0x0x1xx1z01xxx1z00zzzxzxzxzzzxxzzxzxzzxxzxzxxxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
