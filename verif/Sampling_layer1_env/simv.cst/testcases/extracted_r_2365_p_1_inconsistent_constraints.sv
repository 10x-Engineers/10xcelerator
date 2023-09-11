class c_2365_1;
    integer i = -393;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2365_1;
    c_2365_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11100xx01zz0zxz0xx00z0000xz10100zzzxzzzxxxxzxzxzzzzxzzxxzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
