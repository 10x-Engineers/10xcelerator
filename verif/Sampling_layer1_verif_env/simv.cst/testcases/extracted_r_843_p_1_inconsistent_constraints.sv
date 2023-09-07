class c_843_1;
    integer i = -139;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_843_1;
    c_843_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000010xzxz10x0xxxz0xxz1zz0000000zxxzxxzzzxxxxzxzzzxxzzzzzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
