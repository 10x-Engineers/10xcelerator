class c_436_1;
    integer i = 436;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_436_1;
    c_436_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxx1z011zz0zxzx0z001x1000z0zx11zxxxxxxzzzzxzxxzzzxzzxxxxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
