class c_376_1;
    integer i = -61;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_376_1;
    c_376_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11111zxzz00z00zx011x0zzz0xx00011zzxzxzzzxxxxzxzzxxzxzzxxzzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
