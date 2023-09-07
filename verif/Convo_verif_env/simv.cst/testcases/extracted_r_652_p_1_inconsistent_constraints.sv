class c_652_1;
    integer i = 652;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_652_1;
    c_652_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz0111xxz000x0x10zz0xz0110zx00xzzzxxxzzzxxzzzxzzxxzxzzxzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
