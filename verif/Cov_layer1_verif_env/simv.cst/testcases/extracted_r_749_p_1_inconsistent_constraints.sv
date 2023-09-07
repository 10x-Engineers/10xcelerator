class c_749_1;
    integer i = -747;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_749_1;
    c_749_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xxx010111zx0xxz11zzzxx1100xxx0zzzzzxxzxxzxzzzxxzxzxxxxzxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
