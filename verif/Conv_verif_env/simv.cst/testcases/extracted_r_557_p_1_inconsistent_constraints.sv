class c_557_1;
    integer i = 557;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_557_1;
    c_557_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01zx111xz0xzx01z000x11x0z0xx0z1xzzxzzzzzxxzzzzzxxxzxzxzxzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
