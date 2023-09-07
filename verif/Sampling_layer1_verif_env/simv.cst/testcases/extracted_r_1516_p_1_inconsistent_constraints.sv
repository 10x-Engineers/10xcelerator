class c_1516_1;
    integer i = -251;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1516_1;
    c_1516_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xz0xxzx1z0x10z10110111zxx10x00zxzzxzxxzzxxxzzzzzzzzzxxzzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
