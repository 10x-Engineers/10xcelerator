class c_356_1;
    integer i = 356;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_356_1;
    c_356_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011zx1zzxxz0100zzz11z0xzxz110000zzzxzzzzxzxxzzzxxzzxzzzzxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
