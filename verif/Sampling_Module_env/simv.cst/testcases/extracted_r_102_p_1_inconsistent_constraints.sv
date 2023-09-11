class c_102_1;
    integer i = 102;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_102_1;
    c_102_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0x100z00zzz0xx1z1110000x1xz111zzxxxzzxzxzzzxxzzxxzzxzzzxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
