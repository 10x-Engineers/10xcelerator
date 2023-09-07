class c_394_1;
    integer i = -392;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_394_1;
    c_394_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0xx000zzzz01x0zx1xz111zx10xx0zxzxxzzxxzxxxzzxxxxxxxxzxxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
