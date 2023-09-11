class c_355_1;
    integer i = -353;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_355_1;
    c_355_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz00100x1zx0xx0zzx10xxzz000z10z1xzxxzxxxxzxzxzzxxzxzxzxzxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
