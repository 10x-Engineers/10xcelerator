class c_123_1;
    integer i = -121;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_123_1;
    c_123_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1x0xzzz0z0xzzx11000z1z00x1x100xzxxzzzzzxxxzxxxzzxxxzzxzxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
