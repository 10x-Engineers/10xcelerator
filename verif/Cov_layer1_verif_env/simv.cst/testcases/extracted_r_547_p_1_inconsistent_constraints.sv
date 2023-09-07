class c_547_1;
    integer i = -545;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_547_1;
    c_547_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zx01z001x000z001zx00xzz10x101zxxxzzxzzxzzzxzzxzxxzzzzzzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
