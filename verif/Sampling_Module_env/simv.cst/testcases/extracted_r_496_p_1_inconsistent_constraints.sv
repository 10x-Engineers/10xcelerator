class c_496_1;
    integer i = 496;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_496_1;
    c_496_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x1x0xx0x10zzx1z001x11x011xzzz1zzzxxzxxxzzzxxzxxzzzzxxxxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
