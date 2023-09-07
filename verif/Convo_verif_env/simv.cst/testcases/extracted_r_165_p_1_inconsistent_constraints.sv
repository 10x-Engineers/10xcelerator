class c_165_1;
    integer i = 165;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_165_1;
    c_165_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010z0zzzx11z10000x01x1xz0xx01001xxzzzxzxzzxxxzzxzzzzzxxxzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
