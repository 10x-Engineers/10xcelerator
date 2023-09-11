class c_243_1;
    integer i = -241;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_243_1;
    c_243_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0101xzx100x1z1x0xz010xz10z0xzxxxxxzxzxzxzzxxxxxzxxxxzxzxxzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
