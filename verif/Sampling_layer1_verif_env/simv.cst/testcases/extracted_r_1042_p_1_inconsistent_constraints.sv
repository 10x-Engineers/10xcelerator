class c_1042_1;
    integer i = -172;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1042_1;
    c_1042_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxxz1x01xxz1zz1000zz1z00z010xz1xzzxzxzxxzzxzzzxxzzxzxxxzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
