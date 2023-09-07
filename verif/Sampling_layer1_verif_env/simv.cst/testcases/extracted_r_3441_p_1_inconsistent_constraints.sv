class c_3441_1;
    integer i = -572;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3441_1;
    c_3441_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x11xx00xxz11zx0x0x0zxxxxx01z10xxzzzxzzzxzxxzxxzxxxxzxxzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
