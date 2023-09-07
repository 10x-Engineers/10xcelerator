class c_1756_1;
    integer i = -291;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1756_1;
    c_1756_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10xxzx1x0xz1x11x00100zxxzzxz1x1zzxxxxxxxzzxzxxzzxxxzxxxzxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
