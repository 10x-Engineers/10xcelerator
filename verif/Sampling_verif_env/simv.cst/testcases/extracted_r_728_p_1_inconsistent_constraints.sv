class c_728_1;
    integer i = 728;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_728_1;
    c_728_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zxz11000x111zzx0xz1zz10xx1z0xxxzxxxzxzzxxxxxzxxzzxxzxzxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
