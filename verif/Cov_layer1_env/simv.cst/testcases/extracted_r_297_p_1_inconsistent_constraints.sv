class c_297_1;
    integer i = -295;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_297_1;
    c_297_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01zzzxzzxxz1100x1x0zz010zz01z1xzzzzxxzxxzzxzxzxxxzzxxzzzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
