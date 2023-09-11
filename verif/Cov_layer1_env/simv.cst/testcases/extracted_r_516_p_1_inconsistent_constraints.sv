class c_516_1;
    integer i = -514;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_516_1;
    c_516_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z10z111z11xx110z0zz0zzzz01011x1xxzxzzxzxzxxzzxxzxzxxxxxxzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
