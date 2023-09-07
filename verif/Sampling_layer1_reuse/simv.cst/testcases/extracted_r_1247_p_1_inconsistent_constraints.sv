class c_1247_1;
    integer i = -206;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1247_1;
    c_1247_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x000z1110x1x11x1x0z1x1zz1xz1zzxzzxxzxxxzzzzzzxxzzxxxzzzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
