class c_76_1;
    integer i = 76;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_76_1;
    c_76_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xz0000xz110xzx01xxx1z01zxzx0xxzzxzzzxzxzzxzxxzxzxxzxzxzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
