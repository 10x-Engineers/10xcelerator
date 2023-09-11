class c_2506_1;
    integer i = -416;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2506_1;
    c_2506_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x11100z1x0x10xzz1z10xxxzz1x0zzxzzzxxzzxxxzzxxzxxxxxxzxxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
