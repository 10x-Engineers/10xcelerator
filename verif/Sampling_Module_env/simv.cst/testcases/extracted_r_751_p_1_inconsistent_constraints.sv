class c_751_1;
    integer i = 751;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_751_1;
    c_751_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxxz000z0z0xxzzz0z0x1z01z10zx11xzzxxxzxxxxzzxxxzxxzxzxzxxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
