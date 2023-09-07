class c_721_1;
    integer i = 721;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_721_1;
    c_721_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001zz0x1z0zzz11x100xx1zxx1x11101xxzxxzzzzzzxzxxzzzxzxzzzzxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
