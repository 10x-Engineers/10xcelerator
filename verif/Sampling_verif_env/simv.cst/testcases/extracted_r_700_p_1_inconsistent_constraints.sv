class c_700_1;
    integer i = 700;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_700_1;
    c_700_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z11x11zz0zz1x1zz00zxx0zxz1x1xzzxxzxxzxzzzzxxzxzzxxzzxxzzxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
