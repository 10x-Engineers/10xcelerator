class c_219_1;
    integer i = -217;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_219_1;
    c_219_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx0zz01xxzxxx1zxzxx11x101z0zx10xzxzxzzzxxxzxzxxzxxxxzxzzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
