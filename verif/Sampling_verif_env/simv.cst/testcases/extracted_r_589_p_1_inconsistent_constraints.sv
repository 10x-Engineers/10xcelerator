class c_589_1;
    integer i = 589;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_589_1;
    c_589_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0z00zxxxzz0zxxz1x1zx1xzxxzxx0xxzxxzzzxxzzxzzzzxzzxxxzxzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
