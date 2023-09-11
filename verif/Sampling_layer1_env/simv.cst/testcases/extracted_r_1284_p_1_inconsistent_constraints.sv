class c_1284_1;
    integer i = -212;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1284_1;
    c_1284_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x00x11101zzxzx01100z100zzx110x1xzxxxzxxxxzxxzzzzzzzxzzxzzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
