class c_1060_1;
    integer i = -175;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1060_1;
    c_1060_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zxzxz101zz1x0zx00zz01x11z0100zzxxxzzzxxxzxzxzxzxxxzxxxxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
