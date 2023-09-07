class c_2130_1;
    integer i = -353;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2130_1;
    c_2130_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z010x1zzzxzx01zz1xxx01x11xx1xxzzzxxzxxxxzzzxzzxxzxzxxzzzxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
