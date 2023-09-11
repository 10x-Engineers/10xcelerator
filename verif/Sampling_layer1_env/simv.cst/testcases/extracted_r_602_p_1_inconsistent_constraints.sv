class c_602_1;
    integer i = -99;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_602_1;
    c_602_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z0x0z11xxz1x0xzzzzzzzz0zx1101xxxzxzzzzxxzzxzxxxxzxxzzzzzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
