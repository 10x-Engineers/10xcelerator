class c_213_1;
    integer i = 213;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_213_1;
    c_213_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0z110zzzx1z0z10x01z0zzx0x0z100zzxzxzzzxzxxzxzzzxzxzxzxzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
