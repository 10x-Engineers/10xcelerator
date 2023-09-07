class c_389_1;
    integer i = -387;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_389_1;
    c_389_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xxz01z11x01xz001zxzxxzzz1zzxx1xzzxzzxxxxzzzxzxxzxxzxxzzxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
