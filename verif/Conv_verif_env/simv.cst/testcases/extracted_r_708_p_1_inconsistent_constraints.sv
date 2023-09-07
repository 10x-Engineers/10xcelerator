class c_708_1;
    integer i = 708;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_708_1;
    c_708_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x000xzzzz0zz0z01xzxz11001zx11x1xxzzzxxzxzzxxxzxxzxzxxzxxzxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
