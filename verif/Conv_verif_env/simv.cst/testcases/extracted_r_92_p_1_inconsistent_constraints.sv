class c_92_1;
    integer i = 92;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_92_1;
    c_92_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx11110x1z01zxz0z0100x000zxx10z0xzxxzxzxxzzxzzzzzzzxxxzzxzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
