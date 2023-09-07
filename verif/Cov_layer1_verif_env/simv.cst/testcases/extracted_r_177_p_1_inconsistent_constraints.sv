class c_177_1;
    integer i = -175;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_177_1;
    c_177_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x00x0x1xzz1x1x1xxx00x0001zzxx0xzxzxzxxxxxxzzzxzxxxxzzzxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
