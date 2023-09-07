class c_577_1;
    integer i = 577;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_577_1;
    c_577_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z1011zz0zxx1z11x0000zzxzz0x1zzxxzzxxxxxxxzxxxxzxzxxzzzxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
