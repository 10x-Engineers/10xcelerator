class c_488_1;
    integer i = 488;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_488_1;
    c_488_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x11x100xx101x1z010zzxxxx00101z1xxxxzxzxzxzxxxxxxzzzxzzxxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
