class c_769_1;
    integer i = 769;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_769_1;
    c_769_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z000zxxxx0xx001xz0z1xx1xxx0x101xzxxxzzzxzzzzzzxzzzzzxzzzzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
