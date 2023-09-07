class c_282_1;
    integer i = 282;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_282_1;
    c_282_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1z0zzx0x0xz0xx100x11111xxz00x0zzxzzxzxzzzzxxxxzzxzzzzzxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
