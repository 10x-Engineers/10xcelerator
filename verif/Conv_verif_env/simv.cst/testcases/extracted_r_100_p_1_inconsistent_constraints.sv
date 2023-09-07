class c_100_1;
    integer i = 100;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_100_1;
    c_100_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1011101101zzzzx10zx01z0101z00011zzxxxzxzzxxxzxzxxxzxzzzxzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
