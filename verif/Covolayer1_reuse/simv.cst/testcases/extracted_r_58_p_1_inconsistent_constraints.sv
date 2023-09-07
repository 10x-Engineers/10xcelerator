class c_58_1;
    integer i = -56;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_58_1;
    c_58_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101x010z0z11xxxx0xxz0xxz00111100zxxzzzzxzzzxzxzxzxxxxxzzzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
