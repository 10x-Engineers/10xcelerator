class c_427_1;
    integer i = 427;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_427_1;
    c_427_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxxxzx011010zx10000zz1000zz01xxxxxxxxzzxzxzzxzxxzxxzxxxzzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
