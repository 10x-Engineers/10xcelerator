class c_482_1;
    integer i = -480;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_482_1;
    c_482_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z11z01x1z00z0x0000zxx101xxz0xxxzzzxzzxxzzzzxxzxxzxzxxzzxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
