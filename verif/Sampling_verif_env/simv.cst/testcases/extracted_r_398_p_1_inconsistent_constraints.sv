class c_398_1;
    integer i = 398;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_398_1;
    c_398_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1001xzx1zzx0xzz0100111z01x0xzzxxzxxzxxxxzzzxxxzzzzxzxxxxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
