class c_3264_1;
    integer i = -542;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3264_1;
    c_3264_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz00zzz100zxzxxz0x11z0000z01zz1xxzxxxxxxzxxzzzxzzxxxxzxzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
