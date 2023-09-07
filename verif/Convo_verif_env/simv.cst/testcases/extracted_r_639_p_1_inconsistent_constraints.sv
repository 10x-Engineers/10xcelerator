class c_639_1;
    integer i = 639;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_639_1;
    c_639_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0z1zxx0z0001xx10zx01x1z0x10xxzxxxxxxzzxzzxxzzxxxxzzzzxxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
