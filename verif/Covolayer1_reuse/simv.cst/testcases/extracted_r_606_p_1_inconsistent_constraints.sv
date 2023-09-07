class c_606_1;
    integer i = -604;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_606_1;
    c_606_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1111zz00zx01z0xx000x01xz11100011zxxzxzxxzzxxzxxzxzzxzzxxxxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
