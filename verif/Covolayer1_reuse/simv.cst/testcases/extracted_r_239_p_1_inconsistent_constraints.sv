class c_239_1;
    integer i = -237;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_239_1;
    c_239_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0x0zxz1xz0100x01xxx0110zx0z001xzzzzxxxzxxzxzzxxzxzzxzzzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
