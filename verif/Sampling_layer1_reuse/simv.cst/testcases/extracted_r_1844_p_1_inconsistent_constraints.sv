class c_1844_1;
    integer i = -306;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1844_1;
    c_1844_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xxz1100111z10zxxxxx1z010zx010xxzzzxxzzzzzzzzzzxxzzzxzzzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
