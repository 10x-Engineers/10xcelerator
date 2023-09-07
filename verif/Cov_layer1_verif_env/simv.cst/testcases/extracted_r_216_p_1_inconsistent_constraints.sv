class c_216_1;
    integer i = -214;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_216_1;
    c_216_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100010zz101xzxz1110x0x0000xz1x0xxxxzxzzxxzxzzxzxxzzzzzzxzxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
