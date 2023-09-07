class c_3036_1;
    integer i = -504;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3036_1;
    c_3036_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000zx0zz0xz1z0xzz0x0xxz1z0x10110zxzzxxzzxzzzzxzzxzzxzxzzxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
