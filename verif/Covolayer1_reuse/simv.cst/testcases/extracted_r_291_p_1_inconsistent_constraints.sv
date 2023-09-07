class c_291_1;
    integer i = -289;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_291_1;
    c_291_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x0zx010xzxxzxx1z1xx00zx1zz011zzzxzzzzxzxxxzzxzzzxxxxzxzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
