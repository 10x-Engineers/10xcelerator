class c_412_1;
    integer i = 412;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_412_1;
    c_412_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x000zx01x1101z11z00xx000xzxz1101zxzzxxzxzzzxxxxzzxxzzzxzxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
