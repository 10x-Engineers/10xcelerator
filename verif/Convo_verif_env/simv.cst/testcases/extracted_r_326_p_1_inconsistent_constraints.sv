class c_326_1;
    integer i = 326;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_326_1;
    c_326_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx0zxz11z000zx00xx11x0z0zxxzz00xzzzzxzxxxxxzxxzzzzxzxzzxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
