class c_110_1;
    integer i = -108;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_110_1;
    c_110_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01x10xxxz1z0x1xzx0xz0xxz0z1xzzzxzzxzzxzxxxzxxxxxzxxxzxzzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
