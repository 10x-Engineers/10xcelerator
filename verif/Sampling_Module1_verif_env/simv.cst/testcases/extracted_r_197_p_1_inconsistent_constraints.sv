class c_197_1;
    integer i = 197;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_197_1;
    c_197_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzxz1zx1z0zx0z0z111zz1000z11xx0zzxzxzzzzxzxxxxzxzzzxzzxxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
