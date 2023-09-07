class c_452_1;
    integer i = 452;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_452_1;
    c_452_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01xx01xx1x0xx1x0zxz1z111x100x1xxxxxzxzxxzzzzzzzxzxxzxzzxxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
