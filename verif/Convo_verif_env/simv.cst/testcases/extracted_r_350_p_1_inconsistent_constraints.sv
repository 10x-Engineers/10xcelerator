class c_350_1;
    integer i = 350;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_350_1;
    c_350_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xxz10xxzx0xx1zx0xx10x10x110x01zxxzxxzxxzzxxzzzxxxxxzxxzxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
