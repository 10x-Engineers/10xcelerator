class c_2712_1;
    integer i = -450;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2712_1;
    c_2712_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzx0xx1z0xx1z000z1x1z1xzxzzzz01zzxxzzxxxzzzzxxzzzzxzzzzzzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
