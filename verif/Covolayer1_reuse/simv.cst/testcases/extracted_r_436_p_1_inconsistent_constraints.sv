class c_436_1;
    integer i = -434;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_436_1;
    c_436_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0x1x000000zx0zz0z1zz10zxx1z011xxxxxxzxxxxxzxxzzzzxxxxxxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
