class c_515_1;
    integer i = 515;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_515_1;
    c_515_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1100x0x000xz1zzz01zxxxx1z111z0x0xxxxxzzzzxxxxxzzzzzzxxzzxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
