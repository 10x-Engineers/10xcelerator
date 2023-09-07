class c_2798_1;
    integer i = -465;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2798_1;
    c_2798_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100zz1x0000zzz1xx0x0z0xx00111111zxzzzzxzzxzzxxxzzzxxzxxxxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
