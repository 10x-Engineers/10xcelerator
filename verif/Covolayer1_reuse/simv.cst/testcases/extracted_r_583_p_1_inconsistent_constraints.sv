class c_583_1;
    integer i = -581;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_583_1;
    c_583_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx000101000010zzxxx1z0x0x1zzz100zxzzzzxzzxzzzxxzzxxzzzzxxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
