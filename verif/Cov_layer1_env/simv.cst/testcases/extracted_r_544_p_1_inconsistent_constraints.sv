class c_544_1;
    integer i = -542;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_544_1;
    c_544_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01zz11111z01xz1zx10zzxz00z11z0xxzxxzzzxxzzxzxzxzzxxzxxxzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
