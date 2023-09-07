class c_117_1;
    integer i = 117;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_117_1;
    c_117_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00zx01x1z1xx0xx101z00zxx1x1xxxxxzxxxzzzxzxxxxzxxzzxzxzxzzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
