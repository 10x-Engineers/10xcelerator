class c_600_1;
    integer i = -598;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_600_1;
    c_600_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zz101zx0zx01xxx0zxxxxx1xzx0x10xxzxzxzzzzzzzzzzxxzzzxzxzxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
