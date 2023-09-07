class c_2080_1;
    integer i = -345;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2080_1;
    c_2080_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1x10xx0xxx01000z11xzzz1z0xxz0zzzzxzzzxzzxxzzxxzzxzzzzzzzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
