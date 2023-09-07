class c_1258_1;
    integer i = -208;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1258_1;
    c_1258_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z010z11xx0z1z1000x1x11x01zz10z0zzzzxxzzzzxzzzzxzzzzxxxxzzzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
