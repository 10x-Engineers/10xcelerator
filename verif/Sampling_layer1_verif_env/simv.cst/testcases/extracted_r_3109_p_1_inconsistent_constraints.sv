class c_3109_1;
    integer i = -517;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3109_1;
    c_3109_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1xx00x1zzz0xzxz00z00z01zz1x100zzzzzxxzzzxxxxxxzzzxxzzxxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
