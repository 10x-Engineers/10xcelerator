class c_413_1;
    integer i = 413;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_413_1;
    c_413_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x11xx100zxx0zzz0z0zz11zxxx1z00zxzzxzxzxxzzzxxzxzzzzxxzzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
