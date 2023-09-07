class c_686_1;
    integer i = 686;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_686_1;
    c_686_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zzzz0z1z11x11xx1xx000x1xx0z1zzzxzxzzzzxxzxzzzzxzxzzxzzzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
