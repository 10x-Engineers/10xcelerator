class c_316_1;
    integer i = 316;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_316_1;
    c_316_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx0xx1x0xz0x111xzxz010111zx0xz0zzxzzxxzzxzzxzxzzxzzxxzzzzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
