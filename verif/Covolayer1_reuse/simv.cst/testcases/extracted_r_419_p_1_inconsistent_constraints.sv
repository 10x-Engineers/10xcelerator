class c_419_1;
    integer i = -417;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_419_1;
    c_419_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x100zzz0xxz00x00xxzz1z0z000x1111xzzxzzzzxxzxzzxzzzzzxzzzxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
