class c_238_1;
    integer i = -38;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_238_1;
    c_238_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz10101z01x00z000xxxz0zzzx1x01zxxzzzxxzzxzxzzzzxxxxzxxxxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
