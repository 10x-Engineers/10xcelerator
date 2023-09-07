class c_15_1;
    integer i = 15;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_15_1;
    c_15_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz0xzxx00zz0xxz0zxzz1011xz0x00xzxxzzxxxzxzxzzzxxxxxzxzxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
