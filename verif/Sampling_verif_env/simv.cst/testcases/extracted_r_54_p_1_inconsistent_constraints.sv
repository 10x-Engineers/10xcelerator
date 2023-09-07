class c_54_1;
    integer i = 54;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_54_1;
    c_54_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0zzx0xxz01zxz111zxxxxzx0zx00x0zzxxzxxxxzxzxzxxxzzzxzxxzxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
