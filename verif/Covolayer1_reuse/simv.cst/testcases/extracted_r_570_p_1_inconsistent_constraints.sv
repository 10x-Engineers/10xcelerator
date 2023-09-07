class c_570_1;
    integer i = -568;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_570_1;
    c_570_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001zzzz11z001zzzxx10z11110100110zzzxzzxxxzxxzzzxzzzzzzxzzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
