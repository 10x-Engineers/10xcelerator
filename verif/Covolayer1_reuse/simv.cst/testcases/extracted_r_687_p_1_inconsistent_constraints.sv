class c_687_1;
    integer i = -685;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_687_1;
    c_687_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110xz0z000x00x1z0x11x1010z11x0x0xxxxzzzzzxxxzzxzxzzzxxxzzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
