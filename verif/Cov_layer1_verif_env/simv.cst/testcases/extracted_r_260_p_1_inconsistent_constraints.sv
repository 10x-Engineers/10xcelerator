class c_260_1;
    integer i = -258;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_260_1;
    c_260_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1z11zx001100xxz10z1110011001x0zxxzxzzzxzzxzzzzxzxxzxxzxzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
