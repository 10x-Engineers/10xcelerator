class c_2690_1;
    integer i = -447;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2690_1;
    c_2690_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx1xz0xx1x0x0xx00z10xxzxz01x10zzxzxzzxxxxxzxxzxzxxzxxxzxzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
