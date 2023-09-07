class c_56_1;
    integer i = -54;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_56_1;
    c_56_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1z00xz1x1xzz0xzx010z0zx01x00z0zzxxzxxxxzzxzzzxxxxxxzzzzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
