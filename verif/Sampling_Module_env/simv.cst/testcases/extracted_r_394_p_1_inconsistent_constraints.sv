class c_394_1;
    integer i = 394;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_394_1;
    c_394_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x0x110x11xx1x1xz011xx11xxxz1zzxzzxzxxzzxzzzzxzzzzxzxxzzxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
