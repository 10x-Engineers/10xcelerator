class c_630_1;
    integer i = -628;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_630_1;
    c_630_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1111xxx0100x10100zxx0xzzxz0zxxzxzxxxxzxxzzxzzxzxzxzxxzzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
