class c_110_1;
    integer i = 110;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_110_1;
    c_110_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0xzxxzz1z1z1xz0x000x1zz0x1z111zxxzzzzzxzzxxxzxxzzzxzxzzxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
