class c_368_1;
    integer i = -366;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_368_1;
    c_368_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x10x0x0zx010x10x110zz1z000z0xxxzxxzxxzxzxzzzxzzxzzxzzzzzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
