class c_561_1;
    integer i = -559;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_561_1;
    c_561_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0101xzx11x0zz01xz1zzzxxz11zxxxxzxxzxzxxzzzxxzxxxzzzxxxzxzxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
