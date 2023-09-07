class c_2667_1;
    integer i = -443;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2667_1;
    c_2667_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0z10zx10zzx0xz100z0000xzz0x101zzzzzzxxxxzzzxzxzzxxxxzzxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
