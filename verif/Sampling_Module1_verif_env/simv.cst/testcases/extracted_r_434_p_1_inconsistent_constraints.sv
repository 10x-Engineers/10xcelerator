class c_434_1;
    integer i = 434;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_434_1;
    c_434_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz1000xz0xz0x1zzz0zxx0zzzz1xz10zxzxxzxxzxzzzxxxxxxxzzxzzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
