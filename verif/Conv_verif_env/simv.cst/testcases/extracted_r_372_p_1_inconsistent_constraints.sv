class c_372_1;
    integer i = 372;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_372_1;
    c_372_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z1z1x10zx10x11x01zz11z1001zzx1zzzzxzzzzzxzzzzzzxxzzxzxxzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
