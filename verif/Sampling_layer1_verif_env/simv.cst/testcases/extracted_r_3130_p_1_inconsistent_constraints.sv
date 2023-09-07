class c_3130_1;
    integer i = -520;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3130_1;
    c_3130_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1xz01xxx11000z10z11xzzzxxx1zzzxxxzzzxzzzzzxzzxzxzxzzzxzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram