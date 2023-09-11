class c_74_1;
    integer i = 74;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_74_1;
    c_74_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0zz1xx1x11000110z11x11x0xzz000xzxxzzxzxzzzzxxxxxxxzzzxzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
