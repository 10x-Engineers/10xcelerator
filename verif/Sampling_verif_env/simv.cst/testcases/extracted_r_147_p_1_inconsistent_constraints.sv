class c_147_1;
    integer i = 147;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_147_1;
    c_147_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100x0x10xxxz01xx0xx00xz1xz001000xzzxxxxzxxxxzxxzzxxzzxzzzzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
