class c_632_1;
    integer i = -630;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_632_1;
    c_632_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1100x01xx0x00zzx011xxx0xz0x1101zzxxxzzzzxxzxxxxxzxzxxxzxzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
