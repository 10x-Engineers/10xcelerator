class c_8_1;
    integer i = -6;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_8_1;
    c_8_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100010zx10101x01xxx01x100z0xxzxxxxzxxxzxzxzxzxxxzxzzzxxzzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
