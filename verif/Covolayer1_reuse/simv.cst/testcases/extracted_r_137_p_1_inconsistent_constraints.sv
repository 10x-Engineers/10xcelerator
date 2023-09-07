class c_137_1;
    integer i = -135;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_137_1;
    c_137_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxzz01z0xxz0zx01zxx10x1011111zxzzxzxxzzxxzxzxzzxxzxzxzzxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
