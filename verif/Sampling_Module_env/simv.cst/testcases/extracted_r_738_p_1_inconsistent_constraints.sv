class c_738_1;
    integer i = 738;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_738_1;
    c_738_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001xzx010z1x001xzxz1zz101zx00111zxxxzxzxxzzxxxxzxzzxzxzzzxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
