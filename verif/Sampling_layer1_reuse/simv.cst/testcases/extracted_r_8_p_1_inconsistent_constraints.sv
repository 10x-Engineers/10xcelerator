class c_8_1;
    integer i = 8;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_8_1;
    c_8_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x111z0zzx10100z11xzz10z1111x00zzxxxxxxxzxxxxzzzxxxxxzzzxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
