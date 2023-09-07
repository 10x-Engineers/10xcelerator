class c_542_1;
    integer i = 542;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_542_1;
    c_542_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxzz11x00x0xx10011x001111000zx0zzxzxxxzzzzzxxxzzzzzxzzxxzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
