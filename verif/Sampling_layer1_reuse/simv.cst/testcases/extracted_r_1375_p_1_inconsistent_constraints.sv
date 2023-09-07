class c_1375_1;
    integer i = -228;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1375_1;
    c_1375_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1zzzxzzz0x01z0xxxx010z10z1x001xzzzzzxzzxzzxxxxzxzzzxxzzzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
