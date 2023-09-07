class c_271_1;
    integer i = -269;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_271_1;
    c_271_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z1x010z1zx100xxzz0xz0x1x11xxx0xzzzxzxzzxxxzxxxzxzzzxxxxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
