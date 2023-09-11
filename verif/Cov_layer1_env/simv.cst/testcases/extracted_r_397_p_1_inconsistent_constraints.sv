class c_397_1;
    integer i = -395;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_397_1;
    c_397_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0101x0xzzxzzz0zz0x00x001xz01z1x1xzxxzxxzzxzzxxzzxxzxxxxxxxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
