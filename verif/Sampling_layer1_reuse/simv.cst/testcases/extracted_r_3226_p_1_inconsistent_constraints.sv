class c_3226_1;
    integer i = -536;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3226_1;
    c_3226_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xz0xzz10xz0x0zxz0z00x0zzzzx0xxxzzxzxxzzxxzzxxzxxzxxzxxzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
