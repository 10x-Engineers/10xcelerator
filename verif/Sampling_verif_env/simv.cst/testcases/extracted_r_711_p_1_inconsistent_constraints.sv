class c_711_1;
    integer i = 711;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_711_1;
    c_711_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1zzzz01z101x11zxx00z11xzxzzx1zzzzzzzxxxzzxzzzxzxxzzzzxzxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
