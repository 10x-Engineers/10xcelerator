class c_629_1;
    integer i = 629;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_629_1;
    c_629_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11z0zzzx010x1x00xx001x11000zxxzxzxxzzxxxzzxxxxzxxzzxxzxxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
