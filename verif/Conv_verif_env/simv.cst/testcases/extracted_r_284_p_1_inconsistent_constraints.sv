class c_284_1;
    integer i = 284;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_284_1;
    c_284_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x1010z100zzxz1xxx0z010zz0z001xzzzzxzzxxzzzzzzxxzzxxzxxxxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
