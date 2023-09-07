class c_719_1;
    integer i = -118;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_719_1;
    c_719_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zx11zzz1z011xz0zz0xxz0x1x0xxz0zzxxzzxxxxxxxxzzxzzzzzzzzzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
