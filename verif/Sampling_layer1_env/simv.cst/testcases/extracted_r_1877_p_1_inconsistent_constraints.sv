class c_1877_1;
    integer i = -311;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1877_1;
    c_1877_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0000110100x1x0x11zxz11zzxz10z1zxzzxxxzxxxzxzxxxxzxzxxxxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
