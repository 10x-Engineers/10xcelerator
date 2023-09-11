class c_49_1;
    integer i = -47;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_49_1;
    c_49_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01011xzxx1zzxxzxx1xx1x0z0x0zxxzzxzzzzzzzxxxzzzzxzzzxzxzxzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
