class c_407_1;
    integer i = -405;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_407_1;
    c_407_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10x1xzx0z1x0x0zxz0xzxz0x10z1100zxzxzxzzzxzxzxzzxzxxzxxzxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
