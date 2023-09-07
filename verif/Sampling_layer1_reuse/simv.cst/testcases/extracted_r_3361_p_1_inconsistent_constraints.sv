class c_3361_1;
    integer i = -559;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3361_1;
    c_3361_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0xx0xxz011x10zxx1xxz01z1zzzx0xzxxzxzzxxzzxxzxzzzzxzxxxzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
