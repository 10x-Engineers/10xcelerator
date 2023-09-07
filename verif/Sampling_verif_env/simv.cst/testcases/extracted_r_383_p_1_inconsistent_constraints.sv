class c_383_1;
    integer i = 383;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_383_1;
    c_383_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx000zzx1x001z10zxx0xxxxzx001xzxzxzxxxzxxxzzzzzzxzzzzxzzxzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
