class c_532_1;
    integer i = 532;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_532_1;
    c_532_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z001x1zz0zx10zz001zzx01z10x1zxxxxzzzxzxxzzxzxzxzzzxzxzxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
