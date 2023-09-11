class c_613_1;
    integer i = -611;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_613_1;
    c_613_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz110zxz1x111z1xzz0xzzxz11xzz111zxxxxzzzzzxxxxxzxxxxxzzzzxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
