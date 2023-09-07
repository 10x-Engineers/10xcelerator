class c_277_1;
    integer i = -275;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_277_1;
    c_277_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001x00x01000zzx0xz1x000z0x0z1z1zxzxzxxxxzxxzxxxxzxxxxxzxzxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
