class c_234_1;
    integer i = 234;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_234_1;
    c_234_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xxxzz01x1zz0100zz1xz01x1zxxxz0xxzzzzzxxzxzxzxzzxzzzzxxzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
