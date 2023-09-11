class c_563_1;
    integer i = 563;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_563_1;
    c_563_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz11x1xz1x1x1zzx10zxxzx01zz01zxzxxzxzzzxxxxzxzxxzzxzzzxzxxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
