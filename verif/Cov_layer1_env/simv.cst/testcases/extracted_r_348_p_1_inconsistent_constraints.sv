class c_348_1;
    integer i = -346;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_348_1;
    c_348_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z11xxzzz0xxx0z10z1x1xzzx0x1z10xxzzzxxxzzzxxzzzzxzxxzzxxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
