class c_2868_1;
    integer i = -476;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2868_1;
    c_2868_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx1z10x0x10z000zx0xzz101xxxzz01zzxzxxxzxxxxzzzxxxxzxzzzzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
