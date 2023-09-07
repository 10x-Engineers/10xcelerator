class c_42_1;
    integer i = 42;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_42_1;
    c_42_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzzz1zzxxz01x0110xzzx0z1z1zzx00xzzzxxzzzxzxxzxxxzzxxzxzxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
