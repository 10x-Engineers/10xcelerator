class c_565_1;
    integer i = 565;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_565_1;
    c_565_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz11x010zz1x0zz100000xz0zx0zx01xxxzzxxzxzxxxxxxxzxzxzxxxxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
