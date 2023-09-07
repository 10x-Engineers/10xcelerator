class c_618_1;
    integer i = -616;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_618_1;
    c_618_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xzxz11z1x1zzz0z1xzzz10xz11x1zxxzzxzxxzzzxzzzzxzxxzxxzzxxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
