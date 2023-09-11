class c_96_1;
    integer i = 96;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_96_1;
    c_96_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xzx1z0zzzx01x0z11xxz00001x000zzxzzzxxxxxzxzxxxxzxzzxxxxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
