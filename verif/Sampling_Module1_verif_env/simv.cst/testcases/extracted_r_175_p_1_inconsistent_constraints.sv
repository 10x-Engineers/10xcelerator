class c_175_1;
    integer i = 175;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_175_1;
    c_175_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xx1xx1x10xzx0xx1zzzzxzzxx1zxz1xxxzzzzzxxzxxzzxzzzzzzzxzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
