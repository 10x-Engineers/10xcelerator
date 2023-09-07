class c_595_1;
    integer i = 595;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_595_1;
    c_595_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1zxxzz10zx00x11x0000x11x0111z1xzzzxzxzxxxzzxzxxzzxzzxzzxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
