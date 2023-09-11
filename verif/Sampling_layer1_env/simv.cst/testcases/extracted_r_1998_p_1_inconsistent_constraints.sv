class c_1998_1;
    integer i = -331;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1998_1;
    c_1998_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzzzzxx1101zx0100z0x1z10xx0xx01zzxzzzzxxzxxxxzzzxxxxxxzzxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
