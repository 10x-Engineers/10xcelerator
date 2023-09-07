class c_985_1;
    integer i = -163;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_985_1;
    c_985_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx0xxz00z0zx1x11x1xxx0000xzz01zxzzxxxxzxxzxzzxxzzxzzzxxxzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
