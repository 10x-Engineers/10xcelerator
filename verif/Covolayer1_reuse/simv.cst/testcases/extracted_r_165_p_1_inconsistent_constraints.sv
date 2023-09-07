class c_165_1;
    integer i = -163;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_165_1;
    c_165_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xxz0xzzxx1xz011z0z00z101xzx0xzxxzxzxzzzxxzzxzzzxzzzzzzzzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
