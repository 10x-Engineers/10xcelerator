class c_733_1;
    integer i = 733;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_733_1;
    c_733_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z10xz10z11x11101zxxx000x01x1xzxxzzzxzxxxxxxxxzzzzxzxxzxxzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
