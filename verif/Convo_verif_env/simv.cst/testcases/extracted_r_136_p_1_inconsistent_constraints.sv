class c_136_1;
    integer i = 136;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_136_1;
    c_136_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01z0zx01zz01z0xzzx0xz00z1110x0zxxxzzzzzxxxxxxzzxzzzzxzzzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
