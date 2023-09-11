class c_7_1;
    integer i = -5;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_7_1;
    c_7_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z111100zx1001x1z00z1xz01z1xxx0z0xzzzzxxzzzxxxzxzxxxxxzxxzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
