class c_32_1;
    integer i = 32;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_32_1;
    c_32_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz001xxzz0z0011z0xxz1zzxz1z10zxxxzxzxzzxzzxxzzxzzxxzxzzzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
