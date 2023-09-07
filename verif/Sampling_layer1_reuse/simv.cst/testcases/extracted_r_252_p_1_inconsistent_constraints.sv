class c_252_1;
    integer i = -40;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_252_1;
    c_252_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zx0111zzzz1z0110111z11xxz1x0xzzxzxxxzzzzxzzxzzzzzxzxzzzzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
