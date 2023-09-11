class c_224_1;
    integer i = -36;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_224_1;
    c_224_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xx0x0000zzx1x0000z100x0xzx0z01xxzxxzzxzzzzxzxzzxzzxzzzxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
