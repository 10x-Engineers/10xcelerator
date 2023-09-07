class c_420_1;
    integer i = -418;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_420_1;
    c_420_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z000x1001x1zz0xxzz01z11111101x0xzxxxzzxxxxxxxzxzzzxzxxxzzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
