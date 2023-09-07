class c_73_1;
    integer i = 73;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_73_1;
    c_73_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z0z010x000xxz01zx0011zzx1z0x00xxxzxxzzxxzxzxzxzxzzxxxxxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
