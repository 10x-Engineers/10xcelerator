class c_603_1;
    integer i = 603;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_603_1;
    c_603_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zx10zz1x0zzzz1xz1xzz0zzzxxz0xxzxxzzzxxzzzzxzzzzxxxzxzxzxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
