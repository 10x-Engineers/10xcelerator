class c_665_1;
    integer i = 665;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_665_1;
    c_665_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz111zzx01z11zzz1z1zzx0100zx00zzzxzzzxxxzxxzxzxzzzzzxxzxzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
