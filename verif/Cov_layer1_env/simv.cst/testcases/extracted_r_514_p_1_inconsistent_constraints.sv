class c_514_1;
    integer i = -512;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_514_1;
    c_514_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1x10xxx01xx0xxz1z1xxz1001xxz0zzxzxxzxzxzxzxxzxzzxzzxxxxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
