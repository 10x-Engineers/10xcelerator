class c_553_1;
    integer i = -91;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_553_1;
    c_553_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1100z10z101z00z0x000xx1110x11011zxzxzzzxxzxzzzxxxzzzxzzzxxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
