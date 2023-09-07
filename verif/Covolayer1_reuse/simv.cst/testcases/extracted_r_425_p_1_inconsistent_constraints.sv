class c_425_1;
    integer i = -423;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_425_1;
    c_425_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zxx0zzx0z00x0zzx0x01zz0z011z10zzxzxxxxxzxxxzzxxxxxxxxzzxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
