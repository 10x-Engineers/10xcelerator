class c_527_1;
    integer i = -86;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_527_1;
    c_527_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxxzzx1zz1xxxz010zzxxx1xx11z10xxxxxzxzxzzxzxzxxxzxzzxzxzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
