class c_90_1;
    integer i = -88;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_90_1;
    c_90_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0zzzxx0zxz00xzxxzxxz0z0zz01xzxxzxxxzzxzzzzzxxzzxzxxxxxxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
