class c_398_1;
    integer i = -396;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_398_1;
    c_398_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x01xxx11z101zxz1xzxz1x1xx0z1xzxxzxzzxxxxxzxxxzzzxzxxxzxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
