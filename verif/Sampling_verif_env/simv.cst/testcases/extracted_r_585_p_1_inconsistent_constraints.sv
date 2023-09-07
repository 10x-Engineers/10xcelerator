class c_585_1;
    integer i = 585;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_585_1;
    c_585_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x010111z01z11011zx01x00z1z0z10zzxxzzzxzxzxxzzxxzzxxxzxzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
