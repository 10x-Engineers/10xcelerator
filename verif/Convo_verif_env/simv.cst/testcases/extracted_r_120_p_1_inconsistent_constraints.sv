class c_120_1;
    integer i = 120;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_120_1;
    c_120_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx1zxxx0010zz01x101xx100110zz11zxzxzxxzzzxzxzxxzzxxxzzxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
