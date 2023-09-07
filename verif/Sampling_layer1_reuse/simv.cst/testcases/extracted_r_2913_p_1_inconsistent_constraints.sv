class c_2913_1;
    integer i = -484;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2913_1;
    c_2913_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x1zzz0x001x0zx100z01zz111zxzx0xxzxzzzzxxxzzxxzxzzxzxxxzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
