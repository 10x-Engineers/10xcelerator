class c_423_1;
    integer i = 423;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_423_1;
    c_423_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01z0z11zzzxxxz1x01xzx10011zz1x0zxxzxzxzzzzzxxxzzxzxzxzxzzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
