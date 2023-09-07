class c_737_1;
    integer i = 737;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_737_1;
    c_737_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx01xx1z0xz1xx1x0zxxz1zzx000zx0xzxxzxxxxxzzzxzzzzzxzxzxzxzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
