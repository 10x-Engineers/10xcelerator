class c_1915_1;
    integer i = -318;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1915_1;
    c_1915_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x100z11x1zxzz0z1z1000zzx100x11zxxzxxzzzzzzxxzzzzxzzzxxxxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
