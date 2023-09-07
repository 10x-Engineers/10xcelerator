class c_2105_1;
    integer i = -349;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2105_1;
    c_2105_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001001x1xx00z1zz10x1x0z1zzz1z0z0zzzxzxxxzzzxzxxxxzzxzzzzzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
