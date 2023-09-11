class c_209_1;
    integer i = -207;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_209_1;
    c_209_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xxz1000z11z1x1xz111000zzxzz0xxzzzzzzzxxxxxxxxzxzxxzxxxxxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
