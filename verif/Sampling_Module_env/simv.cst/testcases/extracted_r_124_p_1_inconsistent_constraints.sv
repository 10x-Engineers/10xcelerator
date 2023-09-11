class c_124_1;
    integer i = 124;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_124_1;
    c_124_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x1xzzzz0zx1x1110z1xzz0x00z0x11zzzxxxxxxzzzzzxzxxxxxxzxxxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
