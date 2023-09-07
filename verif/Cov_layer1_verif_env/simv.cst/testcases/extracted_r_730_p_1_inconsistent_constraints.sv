class c_730_1;
    integer i = -728;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_730_1;
    c_730_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzzz010011xzzzxx0xxx1xx10x00zz0xzzzzxxzzxzzxxxzzzzxxzzzzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
