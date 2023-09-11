class c_521_1;
    integer i = -519;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_521_1;
    c_521_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z000zxx10xzx0xzzzzz10x1xzx111x1xxxxzxzzzzxxxzxzxzzzzzxxxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
