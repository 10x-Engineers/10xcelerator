class c_2053_1;
    integer i = -341;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2053_1;
    c_2053_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110001zzx10z0xzzzxzxx0x010x01001zxzzxxzxzzxxxxxxzzxzzzxzzzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
