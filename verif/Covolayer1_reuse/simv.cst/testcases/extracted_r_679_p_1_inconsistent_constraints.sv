class c_679_1;
    integer i = -677;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_679_1;
    c_679_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzzz0xx0x0zz101xx1x11zz001xxz11xzxxzxzxxzxxxzxxzxzxzzxzxzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
