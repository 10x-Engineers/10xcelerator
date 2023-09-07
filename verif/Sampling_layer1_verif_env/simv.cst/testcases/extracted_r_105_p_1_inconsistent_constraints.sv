class c_105_1;
    integer i = -16;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_105_1;
    c_105_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001xz10z111z011xz0z00000xzzx0z0xxzxxzxzxxzxzxxxxxxxzxxzzxzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
