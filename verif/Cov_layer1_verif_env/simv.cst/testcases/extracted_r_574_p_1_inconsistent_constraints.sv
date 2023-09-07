class c_574_1;
    integer i = -572;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_574_1;
    c_574_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z00x0xx11z11x1zxxzzzzz0xz10x10xxzxxzzzxzzzzzzxzxzzxxzzzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
