class c_234_1;
    integer i = -232;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_234_1;
    c_234_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010xzxz11001xzxx0z001x000xx0x0z0zxxzxxxzzxxzzzxzzxxzxzxzzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
