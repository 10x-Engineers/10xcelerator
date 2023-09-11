class c_401_1;
    integer i = 401;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_401_1;
    c_401_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0000xx0z0x1x01x0xxz110110101x0zzxxxzzxxzzxxxzxzxzzxzzxxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
