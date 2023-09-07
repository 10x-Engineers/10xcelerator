class c_537_1;
    integer i = -535;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_537_1;
    c_537_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10zxx0x0xz0x111xz111000x0x0zzzzxzxxzzzzzxxxxxxzxzxzxzxzzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
