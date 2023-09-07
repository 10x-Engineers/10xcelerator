class c_130_1;
    integer i = -128;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_130_1;
    c_130_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxz1zzx00z00z1110xxx11xxz1xxz01xxzzzxzxxxzzxzxzzzzxzzzzzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
