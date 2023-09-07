class c_593_1;
    integer i = 593;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_593_1;
    c_593_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zxxzzzxz0zx0z0xz000zz1z101001xxxxzxzxzxzzzxzxzxxzxzxzzzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
