class c_1430_1;
    integer i = -237;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1430_1;
    c_1430_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x0xx10zxx1x11xzzx10zx01x01zxz0xxzzzzxzzxzzxxzxzzxxzxzxzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
