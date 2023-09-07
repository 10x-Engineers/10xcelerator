class c_332_1;
    integer i = 332;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_332_1;
    c_332_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x1zx1z01x1x00xz11100x0xxzxz1zxzxxzxzxzzxzxzxxzzzzzxzxzxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
