class c_484_1;
    integer i = 484;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_484_1;
    c_484_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z0011xx1xxz110zxx0000zxzz1111xxxxxzzzzzzxzxzxxzzxzxzxxxxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
