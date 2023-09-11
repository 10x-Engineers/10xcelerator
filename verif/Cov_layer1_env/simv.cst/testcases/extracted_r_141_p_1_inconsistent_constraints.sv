class c_141_1;
    integer i = -139;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_141_1;
    c_141_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011z1zz00zx11z1xxx10zx0x00z1z1z0xxzxzzxzxzzzxzzxzzzxxzzxxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
