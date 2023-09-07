class c_2127_1;
    integer i = -353;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2127_1;
    c_2127_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101z1x10x10z111000zz1xzzxxx00110zzzxzzzzzzzxxzzzzxxxxzxxxxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
