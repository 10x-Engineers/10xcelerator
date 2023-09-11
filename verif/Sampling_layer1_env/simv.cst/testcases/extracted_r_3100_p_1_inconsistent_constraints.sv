class c_3100_1;
    integer i = -515;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3100_1;
    c_3100_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010000z00z0x1z0z01xxzxzx0xxzxzzxzxzzxzzxxxzxxzzxxzzxxxxzzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
