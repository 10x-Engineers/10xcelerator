class c_729_1;
    integer i = 729;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_729_1;
    c_729_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0110zz1x00zzz01x11xz0xx1xzzx0x0zxzxxxzzzzzzxxxzzxzxxxzxzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
