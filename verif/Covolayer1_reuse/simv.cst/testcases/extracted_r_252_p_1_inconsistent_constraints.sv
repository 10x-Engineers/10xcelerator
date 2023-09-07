class c_252_1;
    integer i = -250;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_252_1;
    c_252_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zzzxz1z1x10xzzz11z1zxz11zx111xzzzzxzzzxzzzxzxxzzxxzxzxxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
