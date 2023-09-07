class c_766_1;
    integer i = 766;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_766_1;
    c_766_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xx101x0100x1x1xzxz001100x0111zzzxzxzxzxxzzzxzzzxzzzzzzzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
