class c_215_1;
    integer i = -213;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_215_1;
    c_215_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzz01011x1xx01x10zz0z1110zz00zzzzzzxzzzxxxzxxzzzxxzxzzxzzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
