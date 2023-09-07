class c_750_1;
    integer i = 750;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_750_1;
    c_750_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx1x0xz1z00z1xzx1zzxz11x0z0x01zxzxzzxxzzxzxxxxxxzxxzzxzxzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
