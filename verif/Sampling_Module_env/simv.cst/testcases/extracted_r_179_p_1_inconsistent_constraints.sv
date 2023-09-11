class c_179_1;
    integer i = 179;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_179_1;
    c_179_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx10zx0010z00xx1zxx010z0z101xx0xzxxzzxzxxzzxxzxxzzxxxxzzxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
