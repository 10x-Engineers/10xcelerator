class c_549_1;
    integer i = -547;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_549_1;
    c_549_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0010xx10zxxxx0xx11x000zz0zzx0z0zzxzxzxxxxxzzzxzzzxxxxzxxzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
