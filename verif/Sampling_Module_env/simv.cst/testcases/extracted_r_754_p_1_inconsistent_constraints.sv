class c_754_1;
    integer i = 754;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_754_1;
    c_754_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00z0zzxzxxx00x101xx1x010z11xxxxzzxxzzzzxxxxzxxzzzxzxzxzzzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
