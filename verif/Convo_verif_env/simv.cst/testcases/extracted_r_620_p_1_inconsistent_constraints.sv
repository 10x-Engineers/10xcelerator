class c_620_1;
    integer i = 620;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_620_1;
    c_620_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0xxz1zz1101x11zxx10x00101xxz1zxxzxzzzxzxxzxzxxzxxzzzzzzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
