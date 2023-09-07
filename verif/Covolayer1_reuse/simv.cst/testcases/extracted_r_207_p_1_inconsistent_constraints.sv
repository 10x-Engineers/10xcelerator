class c_207_1;
    integer i = -205;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_207_1;
    c_207_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0111z0x1x001x11xzz1x1x0zz0zx0xzzzzzzxzzxzzxxzxzxzzzzxxzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
