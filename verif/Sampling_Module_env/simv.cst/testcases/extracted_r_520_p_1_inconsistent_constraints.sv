class c_520_1;
    integer i = 520;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_520_1;
    c_520_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z0xzx0xz0xz00x1x1z0xx010z11z11xzxzxzzxxxxzzxzxxxzxxzxzxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
