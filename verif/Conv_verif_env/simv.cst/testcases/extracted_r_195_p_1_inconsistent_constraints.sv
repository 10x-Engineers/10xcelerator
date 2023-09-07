class c_195_1;
    integer i = 195;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_195_1;
    c_195_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzx0xz01z0x0x0001zzzxz0zx01x01zxxxxzxzxxxxzxzxzxzxzzxxxzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
