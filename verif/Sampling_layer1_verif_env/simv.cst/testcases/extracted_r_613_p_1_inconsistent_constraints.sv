class c_613_1;
    integer i = -101;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_613_1;
    c_613_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx0011xzx1x00100z0x0xz00xz0xz11xzzxzzxzzzxzxzzzxzxzzxzzxzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
