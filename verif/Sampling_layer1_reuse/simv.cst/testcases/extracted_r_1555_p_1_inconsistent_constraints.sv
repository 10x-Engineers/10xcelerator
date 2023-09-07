class c_1555_1;
    integer i = -258;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1555_1;
    c_1555_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0x0z0zzzx10z0zzx00z0x110x11xxzxxxzzxzzxzxzzxxzzxxxzzxxzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
