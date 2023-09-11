class c_774_1;
    integer i = 774;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_774_1;
    c_774_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xx10x10z10xx0xx0zxz110x0xzxzx0zzzzzzzzxzzxzxxxzzxzxxzzzxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
