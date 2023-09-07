class c_431_1;
    integer i = 431;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_431_1;
    c_431_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x0z11xxx0xz0z011z1z11x0x10zxx0xxxxzxzzxxzzxzzzzzxzxzzxzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
