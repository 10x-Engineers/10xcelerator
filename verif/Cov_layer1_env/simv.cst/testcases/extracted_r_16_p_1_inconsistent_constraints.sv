class c_16_1;
    integer i = -14;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_16_1;
    c_16_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz01z110zxxxz11x0z1zzz0zx10xx01zxxzxxzzxzxzzxzzzzxzzxzzzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
