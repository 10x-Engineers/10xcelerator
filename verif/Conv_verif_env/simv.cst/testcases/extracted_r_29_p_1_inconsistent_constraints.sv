class c_29_1;
    integer i = 29;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_29_1;
    c_29_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100x0x1xx101xx1xxx110zx0zx1z0x0xxxzzxxzxxzzzxxzxzxzzzzxxzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
