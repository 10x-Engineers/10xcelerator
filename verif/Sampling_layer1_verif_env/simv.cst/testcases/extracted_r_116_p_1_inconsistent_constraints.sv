class c_116_1;
    integer i = -18;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_116_1;
    c_116_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111zxx1z1x10z1zzxx1z00zz010z0x1zzzzzzzzxzzxxzxzxzzzxxxzzxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
