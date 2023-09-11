class c_239_1;
    integer i = 239;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_239_1;
    c_239_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxz1zxx10001z0z101z1110x010zz10zxxxxxzxxzzzxzzzzxzxxzzzxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
