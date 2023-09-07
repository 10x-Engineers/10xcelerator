class c_689_1;
    integer i = -687;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_689_1;
    c_689_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x1x1xx0011z11011xzxx10zx1zzzx1zzxxzzzxzxxzzzzzxxxxzxxzzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
