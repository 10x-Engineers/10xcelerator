class c_372_1;
    integer i = -370;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_372_1;
    c_372_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1011z0x011xz01xzxxx1111zzz10x1x0xzxzxzxxxxzzxzxxzzzzxxzxxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
