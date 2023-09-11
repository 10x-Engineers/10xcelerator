class c_577_1;
    integer i = -575;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_577_1;
    c_577_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111z110zxxx0xx0z0zx0z1z11z1z1z1xxzzxzzxxzzzzxzzzxxxzxxzzxxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
