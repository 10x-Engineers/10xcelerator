class c_572_1;
    integer i = -570;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_572_1;
    c_572_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1xz1x10zzxzz1xzz010z1x0zzx00z1xzzxzxzxxzxxxzzzxzzxzzxxzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
