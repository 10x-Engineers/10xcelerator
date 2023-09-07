class c_662_1;
    integer i = -660;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_662_1;
    c_662_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz0z0z0zxxzx00x111zz1x1x1zx00xzxxzzxzxxxzxxzzxxzxzzzxzxzxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
