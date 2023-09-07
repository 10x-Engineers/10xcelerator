class c_1517_1;
    integer i = -251;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1517_1;
    c_1517_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1x0xx1110xx0x10x0x1z001xxzx110xxxzzxzzxxxxzxzzzxxzxxzzxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
