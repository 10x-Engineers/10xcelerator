class c_298_1;
    integer i = 298;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_298_1;
    c_298_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx0zzzxz1x000z01x1x00zxzz1zxx11zxxxxxxzxzzxzzzzxxxzxxxxzxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
