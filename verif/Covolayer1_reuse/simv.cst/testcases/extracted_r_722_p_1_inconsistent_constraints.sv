class c_722_1;
    integer i = -720;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_722_1;
    c_722_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1x10xz011xx01x1z1x1101100x0xzxxzzzzxxxzzxxzxxzxzxxzzxzzxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
