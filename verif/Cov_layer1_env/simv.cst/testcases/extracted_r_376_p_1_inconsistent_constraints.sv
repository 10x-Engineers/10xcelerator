class c_376_1;
    integer i = -374;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_376_1;
    c_376_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10z11x1100x011xxzz011xx11xx1011xxxxxzzzzxzzzzxzxzxzxxzxxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
