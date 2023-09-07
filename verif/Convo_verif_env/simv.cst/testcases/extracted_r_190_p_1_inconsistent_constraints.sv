class c_190_1;
    integer i = 190;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_190_1;
    c_190_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx1x0zxx1zzz0zx01z01100xzz010xzzxzxxxzzzxzzxzzzxxzzxzxzxxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
