class c_763_1;
    integer i = 763;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_763_1;
    c_763_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x11z00zxz0x01x1xz1xz011xx1xxz0zzxzzzzzxzzxxzzxzzxxzxzxxxxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
