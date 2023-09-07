class c_292_1;
    integer i = 292;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_292_1;
    c_292_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0011zzx00zz1x0x1xzzz1z1zz100x0xxxxzzzxzxzxxzzzxxxzxzzxzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
