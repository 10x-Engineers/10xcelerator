class c_654_1;
    integer i = 654;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_654_1;
    c_654_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10x01x1zzzzxz01110100x0zxz1zxxxxzxzzxzzxxzzzxzxzxzxxzxxxzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
