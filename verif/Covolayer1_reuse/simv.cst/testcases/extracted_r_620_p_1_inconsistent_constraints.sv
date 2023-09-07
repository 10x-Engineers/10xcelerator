class c_620_1;
    integer i = -618;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_620_1;
    c_620_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzzzz1xzzz01110z10xxx11xxxxx11xzxzzxzzzzxxzzzzzzxxxxxzxxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
