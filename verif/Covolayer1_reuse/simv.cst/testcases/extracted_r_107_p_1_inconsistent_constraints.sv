class c_107_1;
    integer i = -105;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_107_1;
    c_107_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1xz100z0x10zx11zz1x0xz11110xzxxzxxxzzxxzzzxxzxzxzxxxxzzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
