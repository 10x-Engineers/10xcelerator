class c_407_1;
    integer i = 407;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_407_1;
    c_407_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zx0xzz11z1x0xz0x0000zz1x1z0x01xzzxxzzzzxzzzxzzxzxxzxzzxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
