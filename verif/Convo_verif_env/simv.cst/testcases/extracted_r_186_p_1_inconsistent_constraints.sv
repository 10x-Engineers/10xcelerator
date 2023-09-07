class c_186_1;
    integer i = 186;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_186_1;
    c_186_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1110zz1z101xxxz0x0z0x0z00zzx1x0xxxxzxzzxzxxxzzxxxzxzzzzzxzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
