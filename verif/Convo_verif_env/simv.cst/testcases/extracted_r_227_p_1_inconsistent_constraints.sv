class c_227_1;
    integer i = 227;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_227_1;
    c_227_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1111xz0xxz0z1z0x0zxzxxx0111zzzxzzxzzxzxxzxxzzxxzxxzxzxxzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
