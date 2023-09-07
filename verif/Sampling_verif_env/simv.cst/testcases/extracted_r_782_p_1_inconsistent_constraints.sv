class c_782_1;
    integer i = 782;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_782_1;
    c_782_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zxz101xx100x0z0zz101x01z11xxx0zzxzzzxxzzzxzzxxzxxzzxxzzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
