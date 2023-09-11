class c_730_1;
    integer i = 730;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_730_1;
    c_730_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x110110zz0000z011zxzx00zzx010xxxxxxxzxxxzxxxzzxzzzxxxxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
