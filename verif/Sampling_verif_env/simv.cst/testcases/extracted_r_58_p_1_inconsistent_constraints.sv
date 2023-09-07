class c_58_1;
    integer i = 58;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_58_1;
    c_58_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zx100x110zz0100x1xz0x1zzzx1x10zzxxxzzxzzxzxzzxxxxxzzzzxzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
