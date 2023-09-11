class c_13_1;
    integer i = 13;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_13_1;
    c_13_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010x1zzxzxzzzzz1zzzz1x0x0z1zzzzxzxxzzxxxxxxzzxxzxzxzxxzzxzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
