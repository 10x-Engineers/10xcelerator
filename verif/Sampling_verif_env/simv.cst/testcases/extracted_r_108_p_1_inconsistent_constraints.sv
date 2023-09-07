class c_108_1;
    integer i = 108;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_108_1;
    c_108_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1z1zz0zx00z00zz011zzx1xz1zzz1zzxxxzzzzxzxzxzzzxzxzzxxzxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
