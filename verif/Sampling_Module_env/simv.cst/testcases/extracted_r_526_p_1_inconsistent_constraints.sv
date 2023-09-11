class c_526_1;
    integer i = 526;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_526_1;
    c_526_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x0xx1x01xx1z111xzz0zx0z111xxz1zzxxzzzxzxzzxxzxzzxzzxxxzzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
