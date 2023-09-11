class c_1627_1;
    integer i = -270;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1627_1;
    c_1627_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x1zz0111xx1z0x1100zxz01x11x1zzxxxxzxxzzxzzzzxxxxzxxzzxxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
