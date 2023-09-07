class c_780_1;
    integer i = 780;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_780_1;
    c_780_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz11zz01z10zxx100xz00zxx000zz011zzxzzxxxxxxzzxxzxxzzxzxxxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
