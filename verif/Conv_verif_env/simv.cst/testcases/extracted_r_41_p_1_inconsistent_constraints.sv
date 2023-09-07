class c_41_1;
    integer i = 41;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_41_1;
    c_41_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzx0z010zxz00x000zx0zxxzxxz01zxxxzzzxxxxxzzxxxxxxzxzxxxzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
