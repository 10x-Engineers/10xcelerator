class c_1840_1;
    integer i = -305;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1840_1;
    c_1840_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxx00x01x1z01z10xxz10z0x01011xzxxzzzxzzxxxxzxxxzzxzzxzxxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
