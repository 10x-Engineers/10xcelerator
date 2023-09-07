class c_271_1;
    integer i = 271;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_271_1;
    c_271_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxx0011xxz10zzz1xzx1x0xz0x1x10zxzzzzzzxxzzzxzxxxzzxxzzxzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
