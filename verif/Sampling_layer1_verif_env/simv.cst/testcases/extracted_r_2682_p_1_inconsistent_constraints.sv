class c_2682_1;
    integer i = -445;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2682_1;
    c_2682_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0zz1z00z0xxx111z11100z0zzzx001xxzxzzzxzxzzxzxxzxzxzzzxxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
