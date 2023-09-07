class c_20_1;
    integer i = 20;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_20_1;
    c_20_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x1xzx00xxx111zz1xxx0xxx0x0x1xzzzxzzxxxxxzxxxxzxzxxzxxxzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
