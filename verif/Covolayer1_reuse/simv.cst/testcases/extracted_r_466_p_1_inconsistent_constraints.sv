class c_466_1;
    integer i = -464;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_466_1;
    c_466_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z000xzxx0000zx110zz110xzx0x1zxxzxxxzzxzzxxzxzzxzxzxxxxxxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
