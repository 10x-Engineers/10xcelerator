class c_55_1;
    integer i = 55;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_55_1;
    c_55_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10zz0x1x1z1x10110xx1000xz1z0000zzxzxzzxxxxxzzzxxzxzzxzxzzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
