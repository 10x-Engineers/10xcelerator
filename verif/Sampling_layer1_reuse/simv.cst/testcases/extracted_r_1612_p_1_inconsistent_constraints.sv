class c_1612_1;
    integer i = -267;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1612_1;
    c_1612_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z1xxx10zxz0xx1xxz10zzzz1x1x0xzxzxzxxxzxxzxzzxzzzxzzzzxzxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
