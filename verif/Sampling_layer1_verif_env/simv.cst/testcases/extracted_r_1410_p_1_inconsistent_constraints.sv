class c_1410_1;
    integer i = -233;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1410_1;
    c_1410_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111x0xz0100z011zxz1xxzz100z11100zzxxzzxzxxxxzxxzxxxxxzzxxxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
