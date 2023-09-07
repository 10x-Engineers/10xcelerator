class c_283_1;
    integer i = 283;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_283_1;
    c_283_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0zz0xx0010x01xxz1z10zz1xzxz110xxzxzzzzzzzxxxzzzzxxzxxzxzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
