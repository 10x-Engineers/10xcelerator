class c_2811_1;
    integer i = -467;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2811_1;
    c_2811_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxz1x11xxx1z00010zxxz1z0x0xz00zxzzzzzxzxzxzxzxxxzxzxzxzxzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
