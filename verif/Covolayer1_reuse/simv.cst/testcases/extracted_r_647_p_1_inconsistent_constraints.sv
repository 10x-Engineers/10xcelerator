class c_647_1;
    integer i = -645;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_647_1;
    c_647_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zxzx01x00z0xx1000zzzx1x10zx0zzxxxzzxxzxzxxzxzzzzxzzxxzzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
