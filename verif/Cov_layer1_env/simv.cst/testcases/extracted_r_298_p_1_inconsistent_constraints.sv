class c_298_1;
    integer i = -296;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_298_1;
    c_298_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z01zxzzzzzz0zz10x10x1z01zx1x110xzxxzzzzxxzxzzxzzxzxxzzzzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
