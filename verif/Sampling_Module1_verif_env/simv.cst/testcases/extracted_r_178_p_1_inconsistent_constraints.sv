class c_178_1;
    integer i = 178;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_178_1;
    c_178_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzz0x1z0zz10xzzxxzx10z1zzx0xx01xxzxxxxxzzzzzxzzxxxxxzxxxxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
