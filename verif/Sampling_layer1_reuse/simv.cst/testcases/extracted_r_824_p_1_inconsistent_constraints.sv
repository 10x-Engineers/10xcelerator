class c_824_1;
    integer i = -136;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_824_1;
    c_824_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11000z00z01xxxxxxx100x00001x1z1xzxxzzxzzxzxzzxzzzzzzzxzzxzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
