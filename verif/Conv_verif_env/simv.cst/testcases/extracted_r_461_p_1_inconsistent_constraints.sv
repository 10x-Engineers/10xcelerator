class c_461_1;
    integer i = 461;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_461_1;
    c_461_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz0x0zz0000xzx1x1x00zx00x0xzz10zzxzzzzzzxxzzzzzzzzxzzzxzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
