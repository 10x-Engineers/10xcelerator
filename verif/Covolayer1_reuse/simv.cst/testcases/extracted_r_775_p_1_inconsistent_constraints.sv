class c_775_1;
    integer i = -773;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_775_1;
    c_775_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01xxx10xxxz1xzxx1zxx10000zxx0z0xzzzzzxzxxzzzzxzxzxxzxxzzxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
