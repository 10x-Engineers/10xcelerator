class c_666_1;
    integer i = 666;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_666_1;
    c_666_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzz101011xzz1z0x10z1zzxz00x00xzxzxxxxxzzzzxzzxzxzxxxxzxxzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
