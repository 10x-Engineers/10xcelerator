class c_541_1;
    integer i = 541;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_541_1;
    c_541_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010zzz1zzxz01xxxx1zz01xx0x0x1x1xzzxzzxzxzzxxxxxzxzxzxzxzxzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
