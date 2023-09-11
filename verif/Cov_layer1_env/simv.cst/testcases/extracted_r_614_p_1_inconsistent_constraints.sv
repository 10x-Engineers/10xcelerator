class c_614_1;
    integer i = -612;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_614_1;
    c_614_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010x01x1z0x000101xxx0z0z1xzxxxxzxxxxxzzzzzzzxxxzzzxzxxzxzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
