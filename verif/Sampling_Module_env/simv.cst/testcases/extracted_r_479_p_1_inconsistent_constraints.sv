class c_479_1;
    integer i = 479;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_479_1;
    c_479_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100xz00xzz0zzz1z0xx0xx0000111110zxxzxzzzxzzxzxzzxzxzzxzxxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
