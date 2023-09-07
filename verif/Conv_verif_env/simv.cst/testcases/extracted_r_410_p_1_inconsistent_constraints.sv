class c_410_1;
    integer i = 410;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_410_1;
    c_410_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx11z000010zx1xx0x0zz10x01x01zxzzzzxzxzxxzxzzxzzxxxxxxzxzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
