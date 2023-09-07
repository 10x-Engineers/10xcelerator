class c_692_1;
    integer i = -690;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_692_1;
    c_692_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0011z111zx1x10xxz100xz1zz0z000xzxxzxzzzzxxzzxxxxxzzzxxzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram