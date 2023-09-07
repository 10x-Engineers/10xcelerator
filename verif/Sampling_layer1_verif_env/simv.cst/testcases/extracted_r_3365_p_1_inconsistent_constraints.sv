class c_3365_1;
    integer i = -559;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3365_1;
    c_3365_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x000xz1z100zzz01x1z0x00zzzz0xzzxzxxzxxzzxxxzxzzxzzxxxzzxxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
