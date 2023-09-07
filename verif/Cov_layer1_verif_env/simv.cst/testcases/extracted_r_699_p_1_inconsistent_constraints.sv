class c_699_1;
    integer i = -697;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_699_1;
    c_699_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x000zxxxzxz0x10x1x01x10z10z1xzzzzzxzzzzzzxzxxzzzzzxxxzxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
