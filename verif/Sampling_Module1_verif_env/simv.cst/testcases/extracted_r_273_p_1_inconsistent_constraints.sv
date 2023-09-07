class c_273_1;
    integer i = 273;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_273_1;
    c_273_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx1100zz100z0x10000xzxz1x0111zzzzzxzxzzzxxxzzzxzxzxxzzxzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
