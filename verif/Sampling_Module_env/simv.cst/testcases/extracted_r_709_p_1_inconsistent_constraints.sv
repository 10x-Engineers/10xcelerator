class c_709_1;
    integer i = 709;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_709_1;
    c_709_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxz01z111zzx1000x1xxzxzxx101xx1zzzzzxxxzzxzxzzzxzxxzxxzzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
