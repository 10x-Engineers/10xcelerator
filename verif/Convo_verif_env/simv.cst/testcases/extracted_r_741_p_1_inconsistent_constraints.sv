class c_741_1;
    integer i = 741;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_741_1;
    c_741_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz0zz0xz0z01x010000x0xx01x001zzzzzzzzxxxxxzxzxxzxxxzzzxxzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
