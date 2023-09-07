class c_706_1;
    integer i = 706;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_706_1;
    c_706_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zxx111z1x1xxx0z00z1x11zzx01z00xzxxzzxzzzxxzzzxxxzzzxzzxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
