class c_131_1;
    integer i = 131;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_131_1;
    c_131_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zz10zzxz0xz100xx1x1000x0z0x0zxzzxxzzxzzzxxxxxzzzzzxxxzxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
