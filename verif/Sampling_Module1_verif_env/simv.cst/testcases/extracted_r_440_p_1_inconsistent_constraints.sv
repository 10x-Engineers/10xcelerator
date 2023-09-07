class c_440_1;
    integer i = 440;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_440_1;
    c_440_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10z0011z1x0001x110z01z11011zzxzxxxxxxxzxzxxxxxxzzzzxxxxxxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
