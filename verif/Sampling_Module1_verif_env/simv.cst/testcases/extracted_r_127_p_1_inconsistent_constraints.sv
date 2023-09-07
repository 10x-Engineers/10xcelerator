class c_127_1;
    integer i = 127;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_127_1;
    c_127_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0zz010zx0x0x11z0z001xx1zz01zzxzzxxxxzxxzxzxxxxzzzxzzxxxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
