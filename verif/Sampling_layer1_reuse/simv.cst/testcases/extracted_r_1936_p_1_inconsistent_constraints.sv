class c_1936_1;
    integer i = -321;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1936_1;
    c_1936_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10xzxz01011xxxz0xxx1zzz01x1zzxxxxzxzzxzxzxzzxzzxzzzxzzxzzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
