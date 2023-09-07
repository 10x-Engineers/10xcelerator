class c_779_1;
    integer i = -777;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_779_1;
    c_779_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxzxzxx0x010z0z011xz1010z0110zxxxxzzzxzxzxzzzxxxzzxzxzxzxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
