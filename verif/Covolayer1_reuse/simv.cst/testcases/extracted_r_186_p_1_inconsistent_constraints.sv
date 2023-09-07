class c_186_1;
    integer i = -184;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_186_1;
    c_186_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x0xz1x0x10z0x0x10111z0x1x1010zzxzxxzzxxxxzzzxxxxzzxzxzzxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
