class c_471_1;
    integer i = -469;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_471_1;
    c_471_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx1x0x001xxxx01zzxz00101xzz10xzxzxzzxxxxxzxzzzxzzxxzxxxzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
