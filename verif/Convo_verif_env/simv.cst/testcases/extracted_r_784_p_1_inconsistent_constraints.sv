class c_784_1;
    integer i = 784;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_784_1;
    c_784_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0011xxxzzzz0x010xzzzz01xxxzx1z0zxzxxzzzzzzxzxzxzzxxxxzzxzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
