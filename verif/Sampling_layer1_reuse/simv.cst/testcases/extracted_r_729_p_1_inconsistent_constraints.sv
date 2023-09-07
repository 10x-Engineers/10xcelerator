class c_729_1;
    integer i = -120;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_729_1;
    c_729_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxxzzz00z0zz101xx11100101z111zzzxzzzzxzxzxzzxxzxzzxxzzxxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
