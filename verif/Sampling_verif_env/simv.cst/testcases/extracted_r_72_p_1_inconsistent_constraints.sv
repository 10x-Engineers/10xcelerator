class c_72_1;
    integer i = 72;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_72_1;
    c_72_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz10x00zz011x1xz0x01011zxz010zzzzxzxzzxxxxzxxxxzzxxxxxxxxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
