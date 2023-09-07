class c_119_1;
    integer i = 119;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_119_1;
    c_119_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz01z1xz0z0xxx1z1x0000zx0xz11zxxzxxzzxxzxzzxxzzxzzxxxzxzzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
