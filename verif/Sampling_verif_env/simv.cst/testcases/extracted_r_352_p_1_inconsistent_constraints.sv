class c_352_1;
    integer i = 352;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_352_1;
    c_352_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x0xz10x10xz10x1x01z11zxzzz101xzxzxxxxxzzxzzzzxxzxxxxzzxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
