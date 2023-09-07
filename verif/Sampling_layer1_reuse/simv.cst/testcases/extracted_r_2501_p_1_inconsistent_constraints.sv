class c_2501_1;
    integer i = -415;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2501_1;
    c_2501_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxz01xx0x1zxx01xzx0x10zx0z111zxzzzzzzxxzxzzxzzxzxxxxzzzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
