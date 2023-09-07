class c_148_1;
    integer i = -146;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_148_1;
    c_148_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzx11x010zz1x111xzxxxz1z101xz10xxzxzxxzxzxzxxxzzxxzxzzzxzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
