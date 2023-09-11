class c_374_1;
    integer i = 374;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_374_1;
    c_374_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11x1zzx101x1x0zzxzxz0z001zx1100xzxxzxzxxxzzzxzzzxxxzxxxxxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
