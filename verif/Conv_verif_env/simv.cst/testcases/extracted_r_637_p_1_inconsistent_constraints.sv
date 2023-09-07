class c_637_1;
    integer i = 637;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_637_1;
    c_637_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz1zx10xxxxx11100z0z1xxz01z11zzxxxzxxzzxzxzzzzzzxxxzzzxxxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
