class c_2171_1;
    integer i = -360;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2171_1;
    c_2171_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx000z0xz11001z10xx0xx000zzzz10zzxxxzxzzxzzxxxxzxzzzxzzxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
