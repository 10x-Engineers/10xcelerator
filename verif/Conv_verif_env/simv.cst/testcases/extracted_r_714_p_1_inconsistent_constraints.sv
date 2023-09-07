class c_714_1;
    integer i = 714;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_714_1;
    c_714_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx0xx1xxx0zxxz01xxx1zx110zxx10xxxxxxzzxzzxzxzzxzxzxzxzxzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
