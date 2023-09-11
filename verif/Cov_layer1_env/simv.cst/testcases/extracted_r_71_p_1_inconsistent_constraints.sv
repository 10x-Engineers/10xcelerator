class c_71_1;
    integer i = -69;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_71_1;
    c_71_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz10x01zz0010z1z1z11z0z00z0zx011xzxzzxzxzxzzxzxxzxzzxzxzzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
