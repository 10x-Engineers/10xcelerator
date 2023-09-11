class c_265_1;
    integer i = 265;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_265_1;
    c_265_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzxzx10zzx1z1100x1xx000x11x0xx1zxzxzxzzxzxzxxxxzzxzxxzzzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
