class c_3415_1;
    integer i = -568;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3415_1;
    c_3415_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01xzxxxxz0x11zzx1x1zzzx00z11z0zzxzzxzzzxzzxzxxxzzxzxzxxxxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
