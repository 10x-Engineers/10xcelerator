class c_38_1;
    integer i = 38;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_38_1;
    c_38_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0000zzzx0x01z0x1z0xz00xz01zx1z1xxzxxxxzxxzzxxxzzxxxxxxxzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
