class c_575_1;
    integer i = 575;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_575_1;
    c_575_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x0x00xxxzx0100zz0xzxxxzxz01z11xxzxxxxxxxxzzxzzzxzzxzxxzxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
