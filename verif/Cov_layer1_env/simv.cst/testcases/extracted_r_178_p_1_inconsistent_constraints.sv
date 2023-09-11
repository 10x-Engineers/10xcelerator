class c_178_1;
    integer i = -176;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_178_1;
    c_178_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01x1x0x01zx110x0zx0xx0100xx1100xxzzzxxzzxzxzzxxxzxxzzxxzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
