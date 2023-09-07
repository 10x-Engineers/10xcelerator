class c_77_1;
    integer i = 77;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_77_1;
    c_77_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0zzx1x1z11xx10x1z000xx00xxxx1xzxzzzzxzzxzxxzzzxzxxzzxzxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
