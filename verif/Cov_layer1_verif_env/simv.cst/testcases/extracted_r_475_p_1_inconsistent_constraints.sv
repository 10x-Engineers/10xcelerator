class c_475_1;
    integer i = -473;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_475_1;
    c_475_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxz0x110xz0xx10zzz0001z1xx1zx00xxzxzzxzxxzzxzzxxzzxzzxxzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
