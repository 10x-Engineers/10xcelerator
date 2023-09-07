class c_313_1;
    integer i = 313;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_313_1;
    c_313_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z101xx000zx000zx1x0101xxzxzxx1zxxzxxzxzxxxzxzxzzzzzxzxzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
