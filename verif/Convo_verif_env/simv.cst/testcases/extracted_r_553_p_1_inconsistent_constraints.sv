class c_553_1;
    integer i = 553;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_553_1;
    c_553_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxxzx10x0z011z11zx00x0xx0xx10zzzzxxxzxxzzzzxxxxxxzzxzzzxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
