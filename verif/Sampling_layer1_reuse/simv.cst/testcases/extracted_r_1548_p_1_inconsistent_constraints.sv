class c_1548_1;
    integer i = -256;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1548_1;
    c_1548_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zx0xzz011zx11x001x0z0z00zzzxz1zzzzxzxzzzxzxzxxxzxxzxxzzxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
