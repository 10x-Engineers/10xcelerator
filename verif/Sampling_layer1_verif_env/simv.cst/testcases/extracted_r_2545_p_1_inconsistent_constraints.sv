class c_2545_1;
    integer i = -423;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2545_1;
    c_2545_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0z1011xx1000xxz1xx00z11x011zxxxzxxxxxzxxzxxxzzxxxxxxzxxzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
