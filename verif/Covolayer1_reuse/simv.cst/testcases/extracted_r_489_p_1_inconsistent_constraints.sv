class c_489_1;
    integer i = -487;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_489_1;
    c_489_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz01z1zxxxx1z000xx0z01zzxx000zzxzzzzzzxzzxzxzxzzzxxzzzxzxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
