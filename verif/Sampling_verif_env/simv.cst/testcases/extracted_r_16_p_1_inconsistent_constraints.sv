class c_16_1;
    integer i = 16;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_16_1;
    c_16_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10x0x10110100xzxx1x1011101xz0x1zxxzxxzxxzzzxzxxxxxzxzzzxxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
