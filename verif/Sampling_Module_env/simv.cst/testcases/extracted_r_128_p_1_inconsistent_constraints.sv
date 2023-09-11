class c_128_1;
    integer i = 128;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_128_1;
    c_128_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzz100x11x1xz111xz00zx1z1zx0xx0zzxzxxzzzzzxxzxxxxzxxxzxxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
