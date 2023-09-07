class c_127_1;
    integer i = -125;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_127_1;
    c_127_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzxx100x0zxzxxzzz0xz0z101x010zzzzzxxzxxzzzzxxzzxzzxzzxxzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
