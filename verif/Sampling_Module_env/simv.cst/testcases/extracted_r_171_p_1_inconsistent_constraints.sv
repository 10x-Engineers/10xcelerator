class c_171_1;
    integer i = 171;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_171_1;
    c_171_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx1xxzxzzx011xxz1xzzx0xz0zx11zzzxzzxzxzzzzzxzxxzzxxzxzxzzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
