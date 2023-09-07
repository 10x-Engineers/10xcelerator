class c_1165_1;
    integer i = -193;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1165_1;
    c_1165_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zzz0xxz00xxx0x1001z1x100zx1x11xzzzxzzzzxxzxxzzzxzxxxxxzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
