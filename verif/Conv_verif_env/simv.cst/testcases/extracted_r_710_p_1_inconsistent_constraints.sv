class c_710_1;
    integer i = 710;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_710_1;
    c_710_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x01xzx0zzx1xx010x01x01x1zxzxz0zzxxxxxxxzxxxzxxxxxxzzxzxxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
